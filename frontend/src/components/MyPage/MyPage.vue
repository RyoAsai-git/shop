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
          <p class="profile-name">{{ user.name }}</p>
        </div>
      </div>

      <div class="favorite-content">
        <h1 class="favorite-topic item-text">お気に入りショップ</h1>
        <img
          :src="shop.image"
          alt=""
          class="favorite-shop-image"
          v-for="shop in user.shops"
          :key="shop.id"
        />
      </div>
      <div class="favorite-content">
        <h1 class="favorite-topic item-text">お気に入りブランド</h1>
        <div class="brand-content">
          <img
            :src="brand.image"
            alt=""
            class="favorite-brand-image"
            v-for="brand in user.brands"
            :key="brand.id"
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      user: {},
    };
  },

  created: async function () {
    try {
      // ここのidをcurrent_user.idで引っ張ってこれるように変更
      // vueのマイページをログイン済みユーザーのみ表示できるように修正
      // brand,shopクリック後に詳細ページに遷移するような記述作成(モーダル表示でも)
      const res = await axios.get("http://localhost:3000/mypages/1");
      // 上記のidは`http://localhost:3000/api/v1/questionnaires/${this.$route.params.id}`
      // を参考につなぐ
      // const res = await axios.get(`http://localhost:3000/api/v1/questionnaires/${this.$route.params.id}`)
      console.log(res);
      this.user = res.data;
    } catch (error) {
      console.error(error);
    }
  },
};
</script>


<style scoped>
.my_page-area {
  height: 100%;
  width: 80%;
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

.favorite-content {
  margin-top: 50px;
}

.favorite-topic {
  font-size: 25px;
  margin-left: 30px;
}

.favorite-shop-image {
  width: 20%;
  border-radius: 20px;
  aspect-ratio: 5 / 3;
  margin-top: 15px;
  margin-left: 20px;
}

.brand-content {
  overflow-x: auto;
  white-space: nowrap;
}

.favorite-brand-image {
  width: 10%;
  border-radius: 20px;
  border: 1px solid #d3d3d3;
  aspect-ratio: 1;
  margin-top: 15px;
  margin-left: 20px;
}
</style>