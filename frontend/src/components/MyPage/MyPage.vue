<template>
  <div>
    <div class="content my_page-area">
      <div class="my_page">
        <div class="my_page-profile">
          <img
            src="https://pakutaso.cdn.rabify.me/shared/img/page/model_yumiko.jpg?d=500"
            alt=""
            class="profile-image"
          />
          <p class="profile-name">サンプルさん</p>
        </div>
      </div>

      <div class="favorite-shop">
        <h1 class="favorite-topic item-text">お気に入りショップ</h1>
        <img src="" alt="" class="favorite-shop-image" />
      </div>
      <div class="favorite-brand">
        <h1 class="favorite-topic item-text">お気に入りブランド</h1>
        <img src="" alt="" class="favorite-brand-image" />
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>


<style scoped>
.my_page-area {
  height: 100%;
  width: 100%;
}

.my_page {
  height: 30%;
  display: flex;
}

.my_page-profile {
  width: 20%;
  height: 100%;
}

.profile-image {
  height: 80%;
  border: 0.5px solid #d3d3d3;
  aspect-ratio: 1;
  border-radius: 50%;
  margin-top: 40px;
  margin-left: 35px;
  position: relative;
}

.profile-name {
  position: absolute;
  top: 75px;
  left: 215px;
  color: #333333;
  caret-color: transparent;
  font-weight: 600;
  font-size: 20px;
}

.camera-icon {
  height: 100px;
  width: 100px;
  color: var(--main-bg-color);
}

.favorite-shop {

}

.favorite-topic {
  font-size: 25px;
}
</style>