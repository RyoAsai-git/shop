<template>
  <main>
    <div class="search-area">
      <input type="text" class="search-bar" v-model="keyword" />
      <font-awesome-icon :icon="['fas', 'search']" class="search-icon" />
    </div>
    <v-loading v-if="loading"></v-loading>
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
      loading: false
    };
  },

  computed: {
    filteredShops: function () {
      const shops = [];
      for (const i in this.shops) {
        const shop = this.shops[i];
        if (
          shop.name.toLowerCase().indexOf(this.keyword) !== -1 ||
          shop.description.toLowerCase().indexOf(this.keyword) !== -1
        ) {
          shops.push(shop);
        }
      }
      return shops;
    },
  },

  created: async function () {
    this.loading = true;
    try {
      const res = await axios.get("http://localhost:3000/shops");
      console.log(res);
      this.shops = res.data;
      this.loading = false;
    } catch (error) {
      console.error(error);
    }
  },
};
</script>

<style scoped>
.shop-area {
  margin-top: 40px;
  overflow: auto;
}

.shop-area-image-wrap {
  display: inline-block;
  padding-left: 45px;
  margin: 20px auto 0;
  transition-duration: 0.5s;
  cursor: pointer;
}

.shop-area-image {
  width: 320px;
  border-radius: 20px;
  aspect-ratio: 5 / 3;
}

.shop-area-image:hover {
  box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.5);
  transform: translateY(-10px);
  transition-duration: 0.5s;
}
</style>