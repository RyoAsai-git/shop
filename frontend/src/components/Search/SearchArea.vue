<template>
  <div>
    <div class="search-area">
      <div class="search-area-content">
        <div
          class="search-area-image-wrap"
          v-for="shop in shops"
          :key="shop.id"
        >
          <img
            :src="shop.image"
            alt=""
            @click="openModal(shop)"
            class="search-area-image"
          />
        </div>
      </div>
    </div>
    <div v-for="brand in postItem.brands" :key="brand.id">
      <Modal :shop="postItem" :brand="brand" v-show="showContent" @close="closeModal" />
    </div>
  </div>
</template>
<script>
import axios from "axios";
import Modal from "./Modal";

export default {
  components: {
    Modal,
  },
  data() {
    return {
      shops: {},
      postItem: '',
      brand: '',
      showContent: false,
    };
  },

  methods: {
    openModal: function (shop) {
      this.showContent = true;
      this.postItem = shop;
    },
    closeModal: function () {
      this.showContent = false;
    },
  },

  created: async function () {
    try {
      const res = await axios.get("http://localhost:3000/shops");
      console.log(res);
      this.shops = res.data;
      console.log(this.shops);
    } catch (error) {
      console.error(error);
    }
  },
};
</script>

<style scoped>
.search-area {
  position: absolute;
  left: 20%;
}

.search-area-content {
  margin-top: 100px;
  overflow: auto;
}

.search-area-image-wrap {
  display: inline-block;
  height: 300px;
  width: 400px;
  padding-left: 50px;
  margin: 20px auto 0;
  transition-duration: 0.5s;
  cursor: pointer;
}

.search-area-image {
  width: 100%;
  border-radius: 20px;
  background-color: #ccc;
  aspect-ratio: 5 / 3;
}

.search-area-image:hover {
  box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.5);
  transform: translateY(-10px);
  transition-duration: 0.5s;
}
</style>