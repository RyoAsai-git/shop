<template>
  <div id="overlay">
    <font-awesome-icon
      :icon="['fas', 'angle-left']"
      class="back-button"
      @click="$router.back()"
    />
    <div class="modal">
      <img :src="this.shop.image" alt="" class="modal-image no-caret" />
      <dir class="description-area">
        <a
          :href="this.shop.shop_url"
          target="_blank"
          class="shop-name item-text"
          >{{ this.shop.name }}</a
        >
        <font-awesome-icon
          :icon="['fas', 'heart']"
          class="favorite-button like-button"
          v-show="isLiked"
          @click="likeShop(this.shop.id)"
        />
        <font-awesome-icon
          :icon="['fas', 'heart']"
          class="favorite-button delete-like-button"
          v-show="!isLiked"
          @click="deleteLikeShop(this.shop.id)"
        />
        <p class="shop-description description">
          {{ this.shop.description }}
        </p>
      </dir>
    </div>
    <div class="modal-right">
      <div class="modal-right-content">
        <h1 class="modal-right-top item-text">取扱ブランド</h1>
        <div class="brand-image-area">
          <div class="brand-image-content">
            <router-link
              :to="{ name: 'detail', params: { id: brand.id } }"
              v-for="brand in this.shop.brands"
              :key="brand.id"
            >
              <img :src="brand.image" class="brand-image no-caret" />
            </router-link>
          </div>
        </div>
      </div>
      <div class="modal-right-content">
        <div class="modal-right-top item-text">アクセス</div>
      </div>
    </div>
    <router-view></router-view>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      shopId: this.$route.params.id,
      shop: "",
      isLiked: true,
      error: null,
    };
  },

  methods: {
    async likeShop(shopId) {
      this.error = null;
      const userId = window.localStorage.getItem("id");
      try {
        const res = await axios.post(
          `http://localhost:3000/shops/${shopId}/user/${userId}`
        );
        if (!res) {
          throw new Error("お気に入り登録できませんでした");
        }
        if (!this.error) {
          console.log({ res });
          this.isLiked = false;
        }
      } catch (error) {
        this.error = "お気に入り登録できませんでした";
        console.error({ error });
      }
    },

    async deleteLikeShop(shopId) {
      this.error = null;
      const userId = window.localStorage.getItem("id");
      try {
        const res = await axios.delete(
          `http://localhost:3000/shops/${shopId}/user/${userId}`
        );
        if (!res) {
          throw new Error("お気に入りを解除できませんでした");
        }
        if (!this.error) {
          console.log({ res });
          this.isLiked = true;
        }
      } catch (error) {
        this.error = "お気に入りを解除できませんでした";
        console.error({ error });
      }
    },
  },

  created: async function () {
    const id = this.shopId;
    try {
      const res = await axios.get(`http://localhost:3000/shops/${id}`);
      console.log(res);
      this.shop = res.data;
    } catch (error) {
      console.error(error);
    }
  },

  mounted: async function () {
    const userId = window.localStorage.getItem("id");
    const res = await axios.get(`http://localhost:3000/users/${userId}`);
    const shops = res.data.shops;
    for (const shop in shops) {
      if (shops[shop].id == this.shopId) {
        this.isLiked = false;
        break;
      }
    }
  },
};
</script>

<style scoped>
.back-button {
  position: absolute;
  top: 5%;
  left: 22%;
  height: 50px;
  color: #fff;
  cursor: pointer;
}

.modal {
  position: relative;
  height: 60%;
  width: 35%;
  padding: 1em;
  border-radius: 40px;
  background: var(--main-font-color);
}

.modal-image {
  width: 100%;
  border-radius: 20px;
  aspect-ratio: 5 / 3;
}

.description-area {
  position: absolute;
  width: 90%;
  top: 210px;
  left: 35px;
}

.favorite-button {
  position: absolute;
  left: 120px;
  top: 125px;
  cursor: pointer;
}

.like-button {
  color: #d3d3d3;
}

.like-button:hover {
  color: #d3d3d3;
}

.delete-like-button {
  color: #e0548e;
}

.delete-button:hover {
  color: #e0548e;
}

.modal-right-content {
  display: flex;
  flex-direction: column;
  position: relative;
  height: 185px;
  width: 280px;
  margin-left: 10px;
  border-radius: 40px;
  background: var(--main-font-color);
}

.modal-right-content:nth-child(2n) {
  height: 260px;
  margin-top: 10px;
}

.modal-right-top {
  position: absolute;
  top: 20px;
  left: 40px;
  font-size: var(--main-font-size);
}

.shop-name {
  position: absolute;
  top: 120px;
  font-size: var(--main-font-size);
  text-decoration: none;
  cursor: pointer;
}

.shop-name:hover {
  color: var(--main-bg-color);
}

.shop-description {
  position: absolute;
  top: 160px;
  left: 0;
  font-size: var(--sub-font-size);
  font-weight: 600;
}

.brand-image-content {
  overflow-x: auto;
  white-space: nowrap;
  border-radius: 30px;
}

.brand-image {
  width: 40%;
  aspect-ratio: 3 / 3;
  border-radius: 20px;
  border: 1px solid #d3d3d3;
  margin-top: 55px;
  margin-left: 20px;
}
</style>