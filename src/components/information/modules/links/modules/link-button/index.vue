<template>
  <a :href="link" class="links__button">
    <Icon class="links__icon" :icon="icon" color="white" height="48"/>
    <span class="links__legend text__bold">{{ name }}</span>
  </a>
</template>

<script>
import {Icon} from '@iconify/vue2';

export default {
  name: "v-link-button",
  props: {
    name: {
      type: String,
      required: true
    },
    icon: {
      type: String,
      required: true
    },
    link: {
      type: String,
      required: false
    }
  },
  components: {
    Icon,
  },
}
</script>

<style scoped lang="scss">
@import "src/assets/scss/text";

.links {
  &__button {
    display: flex;
    gap: 20px;
    align-items: center;
  }

  &__icon {
    height: 2.4rem;
  }

  &__legend {
    font-size: 1.8rem;
  }
}

</style>