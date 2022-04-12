<template>
  <div class="error-page">
    <h1>404 page not found</h1>
    <h2>ページが見つかりません。</h2>
    <h3 class="error-description">
      お探しのページが見つかりませんでした。<br />
      URLが間違っているか、ページが存在しません。<br />
    </h3>
    <div>
      <button class="home-button" @click="redirectToHome">HOMEに戻る</button>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    redirectToHome() {
      this.$router.push({ name: "Shop" });
    },
  },
};
</script>

<style scoped>
.error-page {
  text-align: center;
  margin-top: 80px;
}

.error-description {
  margin-top: 30px;
}

.home-button {
  margin-top: 40px;
  color: #fff;
  width: 150px;
  border-radius: 20px;
  border: solid #d3d3d3;
  background-color: var(--main-bg-color);
  line-height: 40px;
  cursor: pointer;
}
</style>