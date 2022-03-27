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
        <img
          src="https://lh5.googleusercontent.com/p/AF1QipMccV9puxC1HRW6434gib2j3boiTTMHb_0jBEPM=w1080-k-no"
          alt=""
          class="favorite-shop-image"
        />
                <img
          src="https://lh5.googleusercontent.com/p/AF1QipMccV9puxC1HRW6434gib2j3boiTTMHb_0jBEPM=w1080-k-no"
          alt=""
          class="favorite-shop-image"
        />
                <img
          src="https://lh5.googleusercontent.com/p/AF1QipMccV9puxC1HRW6434gib2j3boiTTMHb_0jBEPM=w1080-k-no"
          alt=""
          class="favorite-shop-image"
        />
                      <img
          src="https://lh5.googleusercontent.com/p/AF1QipMccV9puxC1HRW6434gib2j3boiTTMHb_0jBEPM=w1080-k-no"
          alt=""
          class="favorite-shop-image"
        />
                      <img
          src="https://lh5.googleusercontent.com/p/AF1QipMccV9puxC1HRW6434gib2j3boiTTMHb_0jBEPM=w1080-k-no"
          alt=""
          class="favorite-shop-image"
        />
                      <img
          src="https://lh5.googleusercontent.com/p/AF1QipMccV9puxC1HRW6434gib2j3boiTTMHb_0jBEPM=w1080-k-no"
          alt=""
          class="favorite-shop-image"
        />
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
}

.profile-image {
  height: 175px;
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
  margin-top: 50px;
}

.favorite-topic {
  font-size: 25px;
  margin-left: 30px;
}

.favorite-shop-image{
  width: 20%;
  border-radius: 20px;
  aspect-ratio: 5 / 3;
  margin-top: 15px;
  margin-left: 20px;
}
</style>