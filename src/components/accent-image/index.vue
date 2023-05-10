<template>
  <div class="accent-image">
    <img class="accent-image__background" :src="require('@/assets/images/accent-bg.png')"
         alt="The picture was stolen :(">
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
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  height: 100%;
  transition: 200ms ease-in;

  &__background {
    position: relative;
    bottom: 0;
    width: 100%;
    max-height: 100%;
  }
}

@media screen and (max-height: 700px), (max-width: 1200px) {
  .accent-image {
    position: absolute;
    left: 5%;
    z-index: -1;
    filter: blur(10px);
    opacity: 0.5;
  }
}
</style>
