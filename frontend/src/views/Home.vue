<template>
  <div class="main">
    <Navbar />
    <SearchArea />
  </div>
</template>

<script>
import Navbar from "../components/Navbar.vue"
import SearchArea from "../components/SearchArea"

export default {
  components: {
    Navbar,
    SearchArea,
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