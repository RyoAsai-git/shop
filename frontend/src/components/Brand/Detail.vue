<template>
  <div class="brand-details-body">
    <div class="brand-details-header">
      <font-awesome-icon
        :icon="['fas', 'angle-left']"
        class="back-button"
        @click="$router.back()"
      />
    </div>
    <v-loading v-if="loading"></v-loading>
    <div class="brand-details-main no-caret" v-if="!loading">
      <div class="brand-details-content">
        <img
          :src="this.brand.image"
          alt=""
          class="brand-details-background-image"
        />
      </div>
      <img
        :src="this.brand.image"
        alt=""
        class="brand-image brand-icon-details"
      />
      <div class="brand-description-area">
        <a :href="this.brand.brand_url" target="_blank" class="brand-name">{{
          this.brand.name
        }}</a>
        <font-awesome-icon
          :icon="['fas', 'heart']"
          class="favorite-button like-button"
          v-show="isLiked"
          @click="likeBrand(this.brand.id)"
        />
        <font-awesome-icon
          :icon="['fas', 'heart']"
          class="favorite-button delete-like-button"
          v-show="!isLiked"
          @click="deleteLikeBrand(this.brand.id)"
        />
        <p class="brand-content">{{ this.brand.description }}</p>
      </div>
      <div class="related-content shop-content">
        <h3 class="item-text shop-content-title">取扱店舗</h3>
        <router-link
          :to="{ name: 'Modal', params: { id: shop.id } }"
          v-for="shop in this.brand.shops"
          :key="shop.id"
        >
          <img :src="shop.image" class="related-image shop-image no-caret" />
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      brandId: this.$route.params.id,
      brand: "",
      isLiked: true,
      error: null,
      loading: false,
    };
  },

  methods: {
    async likeBrand(brandId) {
      this.error = null;
      const userId = window.localStorage.getItem("id");
      try {
        const res = await axios.post(
          `http://localhost:3000/brands/${brandId}/user/${userId}`
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

    async deleteLikeBrand(brandId) {
      this.error = null;
      const userId = window.localStorage.getItem("id");
      try {
        const res = await axios.delete(
          `http://localhost:3000/brands/${brandId}/user/${userId}`
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
    this.loading = true;
    const brandId = this.brandId;
    try {
      const res = await axios.get(`http://localhost:3000/brands/${brandId}`);
      console.log(res);
      this.brand = res.data;
      this.loading = false;
    } catch (error) {
      console.error(error);
      if (error.request.status) {
        this.$router.push({ path: '/:catchAll(.*)'});
      }
    }
  },

  mounted: async function () {
    const userId = window.localStorage.getItem("id");
    const res = await axios.get(`http://localhost:3000/users/${userId}`);
    const brands = res.data.brands;
    for (const brand in brands) {
      if (brands[brand].id == this.brandId) {
        this.isLiked = false;
        break;
      }
    }
  },
};
</script>

<style scoped>
.brand-details-body {
  position: fixed;
  height: 100%;
  width: 80%;
  top: 0;
  left: 15%;
  margin-left: 20px;
  background: #fff;
}

.back-button {
  height: 30px;
  width: 30px;
  margin-top: 15px;
  margin-left: 20px;
}

.back-button:hover {
  color: var(--main-bg-color);
}

.brand-details-background-image {
  height: 350px;
  width: 100%;
  object-fit: cover;
}

.brand-icon-details {
  position: absolute;
  width: 15%;
  top: 120px;
  left: 100px;
  border-radius: 20px;
  border: 1px solid #d3d3d3;
}

.brand-description-area {
  width: 90%;
  margin-left: 40px;
}

.brand-name {
  font-weight: 600;
  font-size: 25px;
  color: #333333;
  text-decoration: none;
}

.brand-name:hover {
  color: var(--main-bg-color);
}

.favorite-button {
  margin-left: 20px;
  font-size: 20px;
  cursor: pointer;
}

.shop-content {
  margin-top: 40px;
}

.shop-content-title {
  margin-left: 40px;
}

.shop-image {
  width: 150px;
  margin-top: 25px;
  aspect-ratio: 5 / 3;
}
</style>