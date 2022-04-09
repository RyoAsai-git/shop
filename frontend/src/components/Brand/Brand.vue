<template>
  <main>
    <div class="search-area">
      <input type="text" class="search-bar" v-model="keyword" />
      <font-awesome-icon :icon="['fas', 'search']" class="search-icon" />
    </div>
    <div class="content">
      <router-link
        :to="{ name: 'detail', params: { id: brand.id } }"
        v-for="brand in filteredBrands"
        :key="brand.id"
      >
        <img :src="brand.image" class="brand-image brand-icon-top" />
      </router-link>
    </div>
    <div>
      <router-view></router-view>
    </div>
  </main>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      brands: "",
      keyword: "",
    };
  },

    computed: {
    filteredBrands: function () {
      const brands = [];
      for (const i in this.brands) {
        const brand = this.brands[i];
        if (
          brand.name.indexOf(this.keyword) !== -1 ||
          brand.description.indexOf(this.keyword) !== -1
        ) {
          brands.push(brand);
        }
      }
      return brands;
    },
  },

  created: async function () {
    try {
      const res = await axios.get("http://localhost:3000/brands");
      console.log(res);
      this.brands = res.data;
    } catch (error) {
      console.error(error);
    }
  },
};
</script>

<style scoped>
.brand-image {
  background-color: #ccc;
  border-radius: 20px;
  border: 1px solid #d3d3d3;
  margin-top: 30px;
  margin-left: 40px;
  aspect-ratio: 1;
}

.brand-icon-top {
  width: 180px;
}

.brand-icon-top:hover {
  box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.5);
  transform: translateY(-10px);
  transition-duration: 0.5s;
}
</style>