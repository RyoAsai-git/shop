<template>
  <div class="main">
    <Navbar />
    <!-- <div class="search-area">
      <p>さがす</p>
      <div class="shop">
        <img src="" alt="">
      </div>
    </div> -->
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

.search-area {
  display: inline-block;
}


</style>