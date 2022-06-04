<template>
  <div id="overlay">
    <div class="brand-details-header">
      <font-awesome-icon
        :icon="['fa', 'times']"
        class="back-button"
        @click="$router.back()"
      />
    </div>
    <v-loading v-if="loading"></v-loading>
    <div class="brand-details-main no-caret" v-if="!loading">
      <div class="brand-details-modal">
        <img
          :src="this.brand.image"
          alt=""
          class="brand-details-background-image"
        />
        <img
          :src="this.brand.image"
          alt=""
          class="brand-image brand-icon-details"
        />
      </div>
      <div class="brand-detail-modal-bottom">
        <div class="brand-description-modal">
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
          <p class="brand-content brand-description">
            {{ this.brand.description }}
          </p>
        </div>
        <div class="brand-shop-modal">
          <h3 class="item-text shop-content-title">取扱店舗</h3>
          <div class="brand-shop-image-area">
            <router-link
              :to="{ name: 'Modal', params: { id: shop.id } }"
              v-for="shop in this.brand.shops"
              :key="shop.id"
            >
              <img
                :src="shop.image"
                class="related-image shop-image no-caret"
              />
            </router-link>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "BrandDetailPage",
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
          `${process.env.VUE_APP_API_URL}/brands/${brandId}/user/${userId}`
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
          `${process.env.VUE_APP_API_URL}/brands/${brandId}/user/${userId}`
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

  mounted: async function () {
    this.loading = true;
    const brandId = this.brandId;
    try {
      const res = await axios.get(
        `${process.env.VUE_APP_API_URL}/brands/${brandId}`
      );
      console.log(res);
      this.brand = res.data;
      this.loading = false;
    } catch (error) {
      console.error({ error });
      if (error.request.status) {
        this.$router.push({ path: "/:catchAll(.*)" });
      }
    }

    try {
      const userId = window.localStorage.getItem("id");
      const res = await axios.get(
        `${process.env.VUE_APP_API_URL}/users/${userId}`
      );
      const brands = res.data.brands;
      for (const brand in brands) {
        if (brands[brand].id == this.brandId) {
          this.isLiked = false;
          break;
        }
      }
    } catch (error) {
      console.error({ error });
    }
  },
};
</script>

<style scoped>
.brand-details-header {
  position: absolute;
  top: 0;
  left: 20%;
  color: var(--main-font-color);
  cursor: pointer;
}

.back-button {
  height: 50px;
  width: 30px;
  margin-top: 15px;
  margin-left: 20px;
}

.brand-details-body {
  position: absolute;
  top: 20%;
}

.back-button:hover {
  color: var(--main-bg-color);
}

.brand-details-background-image {
  height: 100%;
  width: 100%;
  object-fit: contain;
}

.brand-detail-modal-bottom {
  display: flex;
}

.brand-details-modal {
  position: relative;
  height: 250px;
  width: 788px;
  background: #fff;
  border-radius: 30px;
}

.brand-icon-details {
  width: 25%;
  border-radius: 20px;
  border: 1px solid #d3d3d3;
  margin-top: 20px;
  position: absolute;
  left: 5%;
  aspect-ratio: 3 / 3;
}

.brand-description-modal {
  height: 300px;
  width: 400px;
  margin-top: 25px;
  padding-top: 20px;
  background: #fff;
  border-radius: 40px;
}

.brand-name {
  font-weight: 600;
  font-size: 25px;
  color: #333333;
  text-decoration: none;
  padding-left: 35px;
}

.brand-name:hover {
  color: var(--main-bg-color);
}

.brand-description {
  line-height: 30px;
  margin-top: 20px;
  padding: 0 20px 20px 20px;
}

.favorite-button {
  margin-left: 20px;
  font-size: 20px;
  cursor: pointer;
}

.brand-shop-modal {
  background: #fff;
  border-radius: 40px;
  margin-top: 25px;
  margin-left: 25px;
  width: 360px;
}

.brand-shop-image-area {
  overflow-x: auto;
  white-space: nowrap;
  border-radius: 30px;
}

.shop-content {
  margin-top: 40px;
}

.shop-content-title {
  margin-left: 40px;
  padding-top: 15px;
  font-size: 25px;
}

.shop-image {
  width: 90%;
  margin-top: 15px;
  aspect-ratio: 5 / 3;
}
</style>