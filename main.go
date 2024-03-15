package main

import (
	"embed"
	"flag"
	"fmt"
	"io/fs"
	"log/slog"
	"net/http"
	"os"
)

var (
	version = "unversioned"

	addrFlag = flag.String("addr", "127.0.0.1:5555", "host:port to listen on")
)

//go:embed dist
var dist embed.FS

func handleHealth(writer http.ResponseWriter, request *http.Request) {
	writer.WriteHeader(200)
}

func errorLogAttr(err error) slog.Attr {
	return slog.Attr{
		Key:   "err",
		Value: slog.StringValue(err.Error()),
	}
}

func middlewareLogRequest(next http.Handler) http.Handler {
	return http.HandlerFunc(func(writer http.ResponseWriter, request *http.Request) {
		slog.Info(fmt.Sprintf("%s %s for %s", request.Method, request.URL, request.RemoteAddr))
		next.ServeHTTP(writer, request)
	})
}

func main() {
	slog.SetDefault(slog.New(slog.NewJSONHandler(os.Stdout, nil)))

	slog.Info("starting FirinKinuo Official Site", slog.String("version", version))
	flag.Parse()

	rootFs, err := fs.Sub(dist, "dist")
	if err != nil {
		slog.Error("create root filesystem", errorLogAttr(err))
		os.Exit(1)
	}

	mux := http.NewServeMux()

	mux.Handle("GET /", middlewareLogRequest(http.FileServer(http.FS(rootFs))))
	mux.HandleFunc("GET /health", handleHealth)
	slog.Info("listening on", slog.String("addr", *addrFlag))

	err = http.ListenAndServe(*addrFlag, mux)
	if err != nil {
		slog.Error("listen and serve", errorLogAttr(err))
		os.Exit(1)
	}
}
