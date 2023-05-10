<template>
  <section class="links">
    <div class="links__header">
      <h2 class="text__black">Links:</h2>
    </div>

    <div class="links__list">
      <v-link-button icon="akar-icons:github-fill" name="Projects" link="https://git.fkinuo.ru"/>
      <v-link-button icon="cib:codewars" name="Codewars" link="https://codewars.fkinuo.ru"/>
    </div>
  </section>
</template>

<script>
import VLinkButton from "@/components/information/modules/links/modules/link-button";
export default {
  name: "v-information-links",
  components: {VLinkButton}

}
</script>

<style scoped lang="scss">
@import "src/assets/scss/text";

.links {
  max-width: 560px;

  &__header {
    margin-bottom: 10px;
  }
  &__list {
    display: flex;
    flex-wrap: wrap;
    gap: 1.5rem;
    margin-left: 1.5rem;
  }

  &__button {
    flex: 1 0 45%
  }
}
</style>