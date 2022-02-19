<template>
  <div class="main">
    <div class="navbar">
      <ul class="navbar-list">
        <li @click="showSearchArea">
          <p class="item_text" v-bind:class="{is_active: searchArea}">さがす</p>
        </li>
        <li @click="showBrandArea">
          <p class="item_text" v-bind:class="{is_active: brandArea}">ブランド</p>
        </li>
        <li>
          <p class="item_text">お気に入り</p>
        </li>
        <li>
          <p class="item_text">マイページ</p>
        </li>
        <li>
          <p class="item_text">設定</p>
        </li>
      </ul>
    </div>
    <SearchArea v-if="searchArea" />
    <BrandArea v-if="brandArea" />
  </div>
</template>

<script>
import SearchArea from "../components/SearchArea";
import BrandArea from "../components/BrandArea";

export default {
  components: {
    SearchArea,
    BrandArea,
  },
  data() {
    return {
      searchArea: true,
      brandArea: false,
    };
  },
  methods: {
    showSearchArea() {
      this.searchArea = true;
      this.brandArea = false;
    },
    showBrandArea() {
      this.searchArea = false;
      this.brandArea = true;
    }
  },
};
</script>

<style scoped>
body {
  height: 100%;
  widows: 100%;
}

#app {
  height: 100%;
  width: 100%;
}

.main {
  height: 100%;
  width: 100%;
}

.navbar {
  height: 100%;
  width: 20%;
  border-right: 2px solid #f1f1f1;
  position: fixed;
  left: 0;
  top: 0;
}

li:first-child {
  padding-top: 20px;
}

li {
  text-align: center;
  line-height: 20px;
  padding-top: 20px;
  padding-bottom: 20px;
  padding-left: 40px;
  list-style-type: none;
  transition: background-color 0.5s;
  font-size: 17px;
  cursor: pointer;
}

li:hover {
  background-color: rgb(191, 207, 207);
  transition: background-color 100ms;
}

.is_active {
  color: #0096a9;
}
</style>