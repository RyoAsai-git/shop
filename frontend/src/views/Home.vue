<template>
  <body>
    <header>
      <h1 class="headline">
        <a>サンプルのサイト</a>
      </h1>
      <ul class="nav-list">
        <li class="nav-list-item">
          <a>Home</a>
        </li>
        <li class="nav-list-item">About</li>
        <li class="nav-list-item">Topic</li>
      </ul>
    </header>
    <div>
    </div>
  </body>
</template>

<script>
export default {};
</script>

<style scoped>
* {
  margin:0; padding:0;
}
header {
  width: 100%;
  padding: 15px 0;
  margin: 0 auto;
  text-align: center;
}
header .headline{
  font-size: 32px;
}
.nav-list {
  text-align: center;
  padding: 10px 0;
  margin: 0 auto;
}
.nav-list-item {
  list-style: none;
  display: inline-block;
  margin: 0 20px;
}
</style>