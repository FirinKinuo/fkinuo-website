<template>
  <div class="accent-image">
    <img class="accent-image__background" src="https://cdn.fkinuo.ru/QDv-XVa7-I1w.jpg" alt="The picture was stolen :(">
  </div>
</template>

<script>
export default {
  name: "v-accent-image"
}
</script>

<style scoped lang="scss">
@import "src/assets/scss/variables";

.accent-image {
  position: relative;
  width: 50vh;
  height: 70%;
  background-color: rgba(48, 52, 51, 0.63);
  border-radius: $border-radius;
  overflow: hidden;

  &__background {
    height: 100%;
  }
}

@media screen and (max-height: 700px), (max-width: 1000px){
  .accent-image {
    display: none;
  }
}
</style>
