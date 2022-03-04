<template>
  <article class="about">
    <p class="text__black">Age: <span class="text__normal">19</span></p>
    <p class="text__black">Langs: <span class="text__normal">Python, Golang, JavaScript</span></p>

    <p class="text__black">Skills: <span class="text__normal">Backend Python & Go, Vue, CI/CD, docker, PostgreSQL, MongoDB, Redis, Linux</span></p>

  </article>
</template>

<script>
export default {
  name: "v-information-about"
}
</script>

<style scoped lang="scss">
@import "src/assets/scss/text";

.about {
  max-width: 90%;
}
</style>