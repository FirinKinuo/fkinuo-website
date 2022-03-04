<template>
  <section class="information">
    <v-header/>
    <v-information-contacts/>
    <v-information-about/>
    <v-information-links/>
  </section>
</template>

<script>
import VInformationContacts from "@/components/information/modules/contacts";
import VInformationAbout from "@/components/information/modules/about";
import VInformationLinks from "@/components/information/modules/links";
import VHeader from "@/components/information/modules/header";

export default {
  name: "v-information",
  components: {VHeader, VInformationLinks, VInformationAbout, VInformationContacts}
}
</script>

<style scoped lang="scss">
  .information {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }
</style>