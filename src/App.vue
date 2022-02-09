<template>
  <div class=""></div>
</template>

<script>

export default {
  name: 'App'
}
</script>

<style lang="scss">
@import url('https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@400;500;800&display=swap');
@import "src/assets/scss/variables";

:root {
  font-size: 20px;
}

* {
  outline: none;
  border: 0;
  text-decoration: none;
  color: var(--dark);
  font-family: 'JetBrains Mono', monospace;
  scrollbar-width: thin;
  scrollbar-color: $yellow $dark;
}

*::-webkit-scrollbar {
  width: 5px;
}

*::-webkit-scrollbar-track {
  background: $dark;
}

*::-webkit-scrollbar-thumb {
  background-color: $yellow;
}

body {
  padding: 0;
  margin: 0;
  height: 100vh;
}

</style>
