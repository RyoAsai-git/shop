<template>
  <div>
    <div class="brand-area" v-show="!showContent">
      <img
        v-for="brand in brands"
        :key="brand.id"
        :src="brand.image"
        alt=""
        @click="openDetails(brand)"
        class="brand-image brand-icon-top"
      />
    </div>
    <BrandDetail :val="postItem" v-show="showContent" @close="closeDetails" />
  </div>
</template>

<script>
import axios from "axios";
import BrandDetail from "./BrandDetail";

export default {
  components: {
    BrandDetail,
  },
  data() {
    return {
      brands: {},
      postItem: "",
      showContent: false,
    };
  },

  methods: {
    openDetails: function (brand) {
      this.showContent = true;
      this.postItem = brand;
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
</style>