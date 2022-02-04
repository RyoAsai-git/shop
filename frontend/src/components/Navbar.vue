<template>
  <div class="navbar">
    <ul class="navbar-list">
      <li>
        <a href="">さがす</a>
      </li>
      <li>
        <a href="">お気に入り</a>
      </li>
      <li>
        <a href="">マイページ</a>
      </li>
      <li>
        <a href="">設定</a>
      </li>
    </ul>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
.navbar {
  height: 100%;
  width: 20%;
  border-right: 2px solid #f1f1f1;
  position: fixed;
  left: 0;
  top: 0;
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

li a {
  font-weight: 600;
  color: #333333;
  display: block;
  height: 100%;
  width: 100%;
  text-decoration: none;
}

/* ボタン選択時の色候補 */
/* color: #0096a9 */
</style>