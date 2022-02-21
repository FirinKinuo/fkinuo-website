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
  gap: 10px;
  position: relative;
  align-items: center;

  &:before {
    display: block;
    content: "";
    height: 100%;
    width: 20px;
    background-color: $yellow;
  }

  &__button {
    display: flex;
    align-items: center;
    gap: 5px;
    padding: 5px 0;
  }

  &__icon {
    height: 1.2rem;
  }

  &__legend {
    font-size: 1.2rem;
  }
}

</style>