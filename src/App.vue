<template>
  <body class="single-page">
    <div class="single-page__background"></div>
    <v-information/>
    <v-accent-image/>
  </body>
</template>

<script>

import VInformation from "@/components/information";
import VAccentImage from "@/components/accent-image";

export default {
  name: 'App',
  components: {VAccentImage, VInformation}
}
</script>

<style lang="scss">
@import url('https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@400;500;800&display=swap');
@import "src/assets/scss/variables";

:root {
  font-size: 18px;

  transition: 200ms ease-in;
}

* {
  outline: none;
  border: 0;
  text-decoration: none;
  color: white;
  font-family: 'JetBrains Mono', monospace;
  scrollbar-width: thin;
  scrollbar-color: $yellow $dark;
  margin: 0;
  padding: 0;
}

*::-webkit-scrollbar {
  width: 5px;
}

*::-webkit-scrollbar-track {
  background: $dark;
}

*::-webkit-scrollbar-thumb {
  background-color: $yellow;
}

html {
  background-color: $dark;
  width: 100%;
  box-sizing: border-box;
}

.single-page {
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 30px;

  &__background {
    background-repeat: no-repeat;
    background-position: center center;
    background-image: $tmp-image;
    background-size: cover;
    filter: blur(5px) brightness(55%) contrast(120%);
    transition: 200ms ease-in;
    transform: scale(1.01);
    position: fixed;
    width: 100%;
    height: 100vh;
    top: 0;
    left: 0;
    z-index: -1;
  }
}

@media screen and (max-height: 700px), (max-width: 800px){
  :root {
    font-size: 16px;
  }
}

@media screen and (max-width: 600px) {
  :root {
    font-size: 14px;
  }
}

</style>
