<template>
  <div class="main">
    <div class="navbar">
      <ul class="navbar-list">
        <li>探す</li>
        <li>お気に入り</li>
        <li>マイページ</li>
        <li>設定</li>
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
  border-right: 2px solid #f1f1f1;
}

.navbar-list {
}

li:first-child {
  padding-top: 20px;
}

li {
  text-align: center;
  line-height: 20px;
  padding-top: 20px;
  padding-bottom: 20px;
  padding-left: 40px;
  list-style-type: none;
  transition: background-color 0.5s;
  font-size: 17px;
}

li:hover {
  background-color: rgb(191, 207, 207);
  transition: background-color 100ms;
}

/* color: #0096a9 */
</style>