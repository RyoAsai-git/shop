<template>
  <main>
    <div class="search-area">
      <input type="text" class="search-bar" v-model="keyword" />
    </div>
    <div class="content">
      <div class="shop-area">
        <router-link
          :to="{ name: 'modal', params: { id: shop.id } }"
          v-for="shop in filteredShops"
          :key="shop.id"
          class="shop-area-image-wrap"
        >
          <img :src="shop.image" class="shop-area-image" />
        </router-link>
      </div>
    </div>
    <router-view></router-view>
  </main>
</template>
<script>
import axios from "axios";

export default {
  data() {
    return {
      shops: "",
      keyword: "",
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

  computed: {
    filteredShops: function () {
      const shops = [];
      for (const i in this.shops) {
        const shop = this.shops[i];
        if (
          shop.name.indexOf(this.keyword) !== -1 ||
          shop.description.indexOf(this.keyword) !== -1
        ) {
          shops.push(shop);
        }
      }
      return shops;
    },
  },

  created: async function () {
    try {
      const res = await axios.get("http://localhost:3000/shops");
      console.log(res);
      this.shops = res.data;
    } catch (error) {
      console.error(error);
    }
  },
};
</script>

<style scoped>
.search-area {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  margin-top: 50px;
}

.search-bar {
  height: 25px;
  width: 250px;
  border-radius: 5px;
  border: solid #d3d3d3;
}

.search-bar:focus {
  outline-color: var(--main-bg-color);
}

.shop-area {
  margin-top: 40px;
  overflow: auto;
}

.shop-area-image-wrap {
  display: inline-block;
  height: 100px;
  width: 300px;
  padding-left: 50px;
  margin: 20px auto 0;
  transition-duration: 0.5s;
  cursor: pointer;
}

.shop-area-image {
  width: 100%;
  border-radius: 20px;
  background-color: #ccc;
  aspect-ratio: 5 / 3;
}

.shop-area-image:hover {
  box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.5);
  transform: translateY(-10px);
  transition-duration: 0.5s;
}
</style>