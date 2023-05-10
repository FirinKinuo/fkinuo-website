<template>
  <section class="contacts">
    <a class="contacts__button" href="https://telegram.fkinuo.ru">
      <Icon class="contacts__icon" icon="cib:telegram-plane" color="white" height="24"/>
      <span class="contacts__legend">@fkinuo</span>
    </a>

    <a class="contacts__button" href="https://linkedin.com/in/firinkinuo/">
      <Icon class="contacts__icon" icon="cib:linkedin" color="white" height="24"/>
      <span class="contacts__legend">FirinKinuo</span>
    </a>

    <a class="contacts__button" href="mailto:deals@fkinuo.ru">
      <Icon class="contacts__icon" icon="cib:mail-ru" color="white" height="24"/>
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
@import "src/assets/scss/text";

.contacts {
  display: flex;
  gap: 1rem;
  position: relative;
  align-items: center;
  margin: 15px 0;

  &__button {
    display: flex;
    align-items: center;
    gap: 0.5rem;
  }

  &__icon {
    width: 1.4rem;
  }

  &__legend {
    @extend .text__bold;
    font-size: 1.4rem;
  }
}

@media screen and (max-width: 1000px) {
  .contacts {
    flex-direction: column;
    align-items: flex-start;
  }

}

</style>