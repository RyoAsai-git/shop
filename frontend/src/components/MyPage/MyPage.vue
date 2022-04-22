<template>
  <main>
    <v-loading v-if="loading"></v-loading>
    <div class="content my_page-area" v-if="!loading">
      <div class="my_page">
        <div class="my_page-profile">
          <font-awesome-icon
            :icon="['fa-solid', 'user']"
            class="profile-icon no-caret"
            v-if="!user.avatar_url"
          />
          <img
            :src="user.avatar_url"
            alt=""
            class="profile-image no-caret"
            v-if="user.avatar_url"
          />
          <router-link :to="{ name: 'UploadImage', params: {id: user.id } }">
            <font-awesome-icon :icon="['fa-solid', 'camera']" class="icon" />
          </router-link>
          <p class="profile-name">{{ user.name }}</p>
          <div></div>
        </div>
      </div>

      <div class="favorite-content">
        <h1 class="favorite-topic item-text">お気に入りショップ</h1>
        <router-link
          :to="{ name: 'Modal', params: { id: shop.id } }"
          v-for="shop in user.shops"
          :key="shop.id"
        >
          <img :src="shop.image" class="favorite-shop-image" />
        </router-link>
      </div>
      <div class="favorite-content">
        <h1 class="favorite-topic item-text">お気に入りブランド</h1>
        <div class="brand-content">
          <router-link
            :to="{ name: 'Detail', params: { id: brand.id } }"
            v-for="brand in user.brands"
            :key="brand.id"
          >
            <img :src="brand.image" class="favorite-brand-image" />
          </router-link>
        </div>
      </div>
      <button class="sign_out-button" @click="signOut">
        <p class="sign_out-text">ログアウトする</p>
      </button>

      <router-view></router-view>
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
      loading: false,
    };
  },
  methods: {
    async signOut() {
      this.error = null;
      const uid = window.localStorage.getItem("uid");
      const accessToken = window.localStorage.getItem("access-token");
      const client = window.localStorage.getItem("client");
      try {
        const res = await axios.delete(`${process.env.VUE_APP_API_URL}/auth/sign_out`, {
          headers: {
            uid: uid,
            client: client,
            "access-token": accessToken,
          },
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
    },
  },

  created: async function () {
    this.loading = true;
    try {
      const userId = window.localStorage.getItem("id");
      const res = await axios.get(`${process.env.VUE_APP_API_URL}/users/${userId}`);
      console.log({ res });
      this.user = res.data;
      this.loading = false;
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

.my_page-profile {
  border: 0.5px solid #d3d3d3;
  border-radius: 50px;
  margin-top: 40px;
  margin-left: 35px;
  height: 175px;
  width: 175px;
  overflow: hidden;
}

.profile-icon {
  position: absolute;
  font-size: 155px;
  left: 55px;
  top: 50px;
}

.profile-image {
  height: 180px;
  aspect-ratio: 1;
}

.profile-name {
  position: absolute;
  top: 75px;
  left: 215px;
  color: #333333;
  font-weight: 600;
  font-size: 20px;
  margin-left: 10px;
}

.icon {
  font-size: 25px;
  position: absolute;
  top: 175px;
  left: 111px;
  color: #fff;
  cursor: pointer;
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
  left: 0;
  right: 0;
  margin: auto;
  border-radius: 20px;
  border: solid #d3d3d3;
  background-color: var(--main-bg-color);
  line-height: 40px;
  text-align: center;
  cursor: pointer;
}

.sign_out-text {
  font-weight: bold;
  color: var(--main-font-color);
}
</style>