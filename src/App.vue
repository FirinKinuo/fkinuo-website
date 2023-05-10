<template>
  <body class="single-page">
  <div class="single-page__background"></div>
  <v-accent-image/>
  <v-information/>
  <v-background-particles/>
  </body>
</template>

<script>

import VInformation from "@/components/information";
import VAccentImage from "@/components/accent-image";
import VBackgroundParticles from "@/components/background-particles"

export default {
  name: 'App',
  components: {VAccentImage, VInformation, VBackgroundParticles}
}
</script>

<style lang="scss">
@import url('https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@400;500;800&display=swap');
@import "src/assets/scss/variables";

:root {
  font-size: 18px;
  transition: 200ms ease-in;
}

* {
  outline: none;
  border: 0;
  text-decoration: none;
  color: $primary;
  font-family: 'M PLUS Rounded 1c', sans-serif;
  scrollbar-width: thin;
  scrollbar-color: $primary $dark;
  margin: 0;
  padding: 0;
  white-space: pre-wrap
}

*::-webkit-scrollbar {
  width: 5px;
}

*::-webkit-scrollbar-track {
  background: $dark;
}

*::-webkit-scrollbar-thumb {
  background-color: $primary;
}

html {
  background-color: $dark;
  width: 100%;
  max-width: 95vw;
  box-sizing: border-box;
}

.single-page {
  height: 100vh;
  display: flex;
  justify-content: space-around;
  align-items: center;
  overflow: hidden;
  margin: 0 10px;

  &__background {
    background-size: cover;
    background: $bg-gradient;
    transition: 200ms ease-in;
    position: fixed;
    width: 100%;
    height: 100vh;
    top: 0;
    left: 0;
    z-index: -1000;
  }
}

@media screen and (max-width: 800px) {
  :root {
    font-size: 15px;
  }

  .single-page {
    align-items: flex-start;
  }
}

@media screen and (max-height: 700px) {
  .single-page {
    overflow: scroll;
  }
}


</style>
