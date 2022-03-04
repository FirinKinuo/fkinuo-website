<template>
  <section class="contacts">
    <a class="contacts__button" href="https://telegram.fkinuo.ru">
      <Icon class="contacts__icon" icon="cib:telegram-plane" color="white" height="48" />
      <span class="contacts__legend">@fkinuo</span>
    </a>

    <a class="contacts__button" href="mailto:deals@fkinuo.ru">
      <Icon class="contacts__icon" icon="cib:mail-ru" color="white" height="48" />
      <span class="contacts__legend">deals@fkinuo.ru</span>
    </a>
  </section>
</template>

<script>
import {Icon} from '@iconify/vue2';

export default {
  name: "v-information-contacts",
  components: {
    Icon,
  },
}
</script>

<style scoped lang="scss">
@import "src/assets/scss/variables";

.contacts {
  display: flex;
  gap: 1rem;
  position: relative;
  align-items: center;

  &:before {
    display: block;
    content: "";
    height: 2rem;
    width: 1rem;
    background-color: $yellow;
  }

  &__button {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 5px 0;
  }

  &__icon {
    width: 1.2rem;
  }

  &__legend {
    font-size: 1.2rem;
  }
}

</style>