<template>
  <div class="navbar">
    <ul class="navbar-list">
      <li>
        <router-link
          to="/search"
          exact
          class="item-text"
          >ショップ</router-link
        >
      </li>
      <li>
        <router-link
          to="/brand"
          exact
          class="item-text"
          >ブランド</router-link
        >
      </li>
      <li>
        <router-link
          to="/myPage"
          exact
          class="item-text"
          >マイページ</router-link
        >
      </li>
    </ul>
  </div>
</template>

<script>
export default {
};
</script>

<style scoped>

ul li a {
  text-decoration: none;
  display: inline-block;
  height: 100%;
  width: 100%;
  padding-top: 20px;
  padding-bottom: 20px;
}

.navbar {
  height: 100%;
  width: 15%;
  border-right: 2px solid #f1f1f1;
  position: fixed;
  left: 0;
  top: 0;
}

li {
  text-align: center;
  line-height: 20px;
  transition: background-color 0.5s;
  font-size: var(--main-font-size);
  cursor: pointer;
}

li:hover {
  background-color: rgb(191, 207, 207);
  transition: background-color 100ms;
}

.router-link-active {
  color: var(--main-bg-color);
}
</style>
