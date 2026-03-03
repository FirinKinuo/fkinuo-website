import { defineConfig } from 'vite';
import tailwindcss from '@tailwindcss/vite'
import path from 'path';

export default defineConfig({
    plugins: [
        tailwindcss()
    ],
    root: path.resolve(__dirname, 'web'), // Корень теперь внутри web
    publicDir: path.resolve(__dirname, 'web/public'), // Полный путь к public
    build: {
        outDir: path.resolve(__dirname, 'dist'),
        rollupOptions: {
            input: {
                main: path.resolve(__dirname, 'web/index.html'),
                pc: path.resolve(__dirname, 'web/pc/index.html')
            }
        }
    },
    resolve: {
        alias: {
            '@': path.resolve(__dirname, 'web')
        }
    }
});