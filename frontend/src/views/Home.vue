<template>
  <div class="main">
    Home画面です
    <div class="navbar">
      <ul class="navbar-list">
        <li>test1</li>
        <li>test2</li>
        <li>test3</li>
      </ul>
    </div>
  </div>
</template>

<script>
// import Navbar from "../components/Navbar.vue";

export default {
  components: {
    // Navbar,
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

.navbar {
  height: 100%;
  width: 20%;
}

.navbar-list {

}

li:first-child {
  padding-top: 0px;
}

li {
  padding-top: 20px;
}


</style>