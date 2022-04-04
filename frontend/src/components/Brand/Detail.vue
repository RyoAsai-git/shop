<template>
  <div class="brand-details-body">
    <div class="brand-details-header">
      <FAIcon
        :icon="['fas', 'angle-left']"
        class="back-button"
        @click="$emit('close')"
      />
    </div>
    <div class="brand-details-main no-caret">
      <div class="brand-details-content">
        <img :src="brand.image" alt="" class="brand-details-background-image" />
      </div>
      <img :src="brand.image" alt="" class="brand-image brand-icon-details" />
      <div class="brand-description-area">
        <a :href="brand.brand_url" class="brand-name">{{ brand.name }}</a>
        <p class="brand-content">{{ brand.description }}</p>
      </div>
      <div class="brand-button" @click="likeBrand(brand.id)">
        <p class="button-text">このブランドをお気に入りにする</p>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  props: ["brand"],
  data() {
    return {
      showContent: false,
      error: null,
    };
  },

  methods: {
    async likeBrand(brandId) {
      this.error = null;
      const userId = window.localStorage.getItem('id');
      try {
        const res = await axios.post(`http://localhost:3000/brands/${brandId}/user/${userId}`);
        if (!res) {
          throw new Error("お気に入り登録できませんでした");
        }
        if (!this.error) {
          console.log({ res });
        }
      } catch (error) {
        this.error = "お気に入り登録できませんでした";
        console.error({ error });
      }
    }
  }
};
</script>

<style scoped>
.brand-details-body {
  position: absolute;
  height: 100%;
  width: 80%;
  left: 15%;
  top: 0;
  margin-left: 20px;
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
  font-size: 20px;
  color: #333333;
  text-decoration: none;
}

.brand-name:hover {
  color: var(--main-bg-color);
}

.brand-button {
  position: absolute;
  width: 265px;
  top: 500px;
  left: 0;
  right: 0;
  margin: auto;
  border-radius: 20px;
  background-color: var(--main-bg-color);
  line-height: 40px;
  text-align: center;
  cursor: pointer;
}

.button-text {
  font-weight: bold;
  color: var(--main-font-color);
}
</style>