<template>
  <main>
    <div class="content my_page-area">
      <div class="my_page">
        <div class="my_page-profile">
          <img
            src="https://pakutaso.cdn.rabify.me/shared/img/page/model_yumiko.jpg?d=500"
            alt=""
            class="profile-image no-caret"
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
      <button class="sign_out-button" @click="signOut">
        <p class="sign_out-text">ログアウトする</p>
      </button>
    </div>
  </main>
</template>

<script>
import axios from "axios";
import removeItem from "../../auth/removeItem";

export default {
  data() {
    return {
      user: {},
      error: null,
    };
  },
  methods: {
    async signOut() {
      this.error = null;
      const uid = window.localStorage.getItem('uid');
      const accessToken = window.localStorage.getItem('access-token');
      const client = window.localStorage.getItem('client');
      try {
        const res = await axios.delete("http://localhost:3000/auth/sign_out", {
          headers: {
            "uid": uid,
            "client": client,
            "access-token": accessToken,
          }
        });
        if (!res) {
          throw new Error("ログアウトできませんでした");
        }
        if (!this.error) {
          removeItem();
          this.$router.push({ name: "Welcome" });
        }
        console.log({ res });
        return res;
      } catch (error) {
        this.error = "ログアウトできませんでした";
        console.error({ error });
      }
    }
  },

  created: async function () {
    try {
      const userId = window.localStorage.getItem("id");
      const res = await axios.get(`http://localhost:3000/users/${userId}`);
      console.log({ res });
      this.user = res.data;
    } catch (error) {
      console.error({ error });
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
  position: relative;
  aspect-ratio: 1;
  height: 175px;
  border: 0.5px solid #d3d3d3;
  border-radius: 50%;
  margin-top: 40px;
  margin-left: 35px;
}

.profile-name {
  position: absolute;
  top: 75px;
  left: 215px;
  color: #333333;
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

.sign_out-button {
  position: absolute;
  width: 200px;
  top: 500px;
  left: 0;
  right: 0;
  margin: auto;
  border-radius: 20px;
  background-color: #ff4500;
  line-height: 40px;
  text-align: center;
  cursor: pointer;
}

.sign_out-text {
  font-weight: bold;
  color: var(--main-font-color);
}
</style>