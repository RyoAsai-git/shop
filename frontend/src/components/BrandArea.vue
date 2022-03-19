<template>
  <div>
    <div class="brand-area" v-show="!showContent" v-for="brand in brands" :key="brand.id">
      <img
        :src="brand.image"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
    </div>
    <div class="brand-details-body" v-show="showContent">
      <div class="brand-details-header">
        <FAIcon
          :icon="['fas', 'angle-left']"
          class="back-button"
          @click="closeDetails"
        />
      </div>
      <div class="brand-details-main">
        <div class="brand-details-content">
          <img
            src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
            alt=""
            class="brand-details-background-image"
          />
        </div>
        <img
          src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
          alt=""
          class="brand-image brand-icon-details"
        />
        <div class="brand-button">
          <p class="button-text">このブランドをフォローする</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      brands: {},
      showContent: false,
    };
  },

  methods: {
    openDetails: function () {
      this.showContent = true;
    },
    closeDetails: function () {
      this.showContent = false;
    },
  },

    created: async function () {
    try {
      const res = await axios.get("http://localhost:3000/brands");
      console.log(res);
      this.brands = res.data;
      console.log(this.brands);
    } catch (error) {
      console.error(error);
    }
  },
};
</script>

<style scoped>
.brand-area {
  position: absolute;
  width: 80%;
  left: 20%;
}

.brand-image {
  background-color: #ccc;
  border-radius: 20px;
  border: 1px solid #d3d3d3;
  margin-top: 30px;
  margin-left: 20px;
  aspect-ratio: 1;
}

.brand-icon-top {
  width: 20%;
}

.brand-icon-top:hover {
  box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.5);
  transform: translateY(-10px);
  transition-duration: 0.5s;
}

.brand-details-body {
  position: absolute;
  height: 100%;
  width: 80%;
  left: 20%;
  top: 0;
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
}

.brand-button {
  position: absolute;
  width: 230px;
  top: 380px;
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