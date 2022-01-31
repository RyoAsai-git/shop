<template>
  <div class="main">
    <Navbar />
  </div>
</template>

<script>
import Navbar from "../components/Navbar.vue";

export default {
  components: {
    Navbar,
  },
};
</script>

<style scoped>
body {
  height: 100%;
  widows: 100%;
}

#app {
  height: 100%;
  width: 100%;
}

.main {
  height: 100%;
  width: 100%;
}


</style>