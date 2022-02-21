<template>
  <article class="header">
    <p class="header__title text__black">Welcome, %username%</p>
    <p class="header__subtitle text__normal">I’m FirinKinuo, backend developer</p>
  </article>
</template>

<script>
export default {
  name: "v-header",
}
</script>

<style scoped lang="scss">
@import "src/assets/scss/text";
.header {
  display: block;

  &__title {
    font-size: 3.2rem;
  }

  &__subtitle {
    font-size: 2.1rem;
  }
}


</style>