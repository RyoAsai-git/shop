<template>
  <div class="main">
    <div class="navbar">
      <ul class="navbar-list">
        <li @click="showSearchArea">
          <p class="item-text" :class="{ is_active: searchArea }">さがす</p>
        </li>
        <li @click="showBrandArea">
          <p class="item-text" :class="{ is_active: brandArea }">ブランド</p>
        </li>
        <li @click="showMyPage">
          <p class="item-text" :class="{ is_active: myPage }">マイページ</p>
        </li>
      </ul>
    </div>
    <SearchArea v-if="searchArea" />
    <BrandArea v-if="brandArea" />
    <MyPage v-if="myPage" />
  </div>
</template>

<script>
import SearchArea from "../components/Search/SearchArea";
import BrandArea from "../components/Brand/BrandArea";
import MyPage from "../components/MyPage/MyPage.vue";

export default {
  components: {
    SearchArea,
    BrandArea,
    MyPage,
  },
  data() {
    return {
      searchArea: true,
      brandArea: false,
      myPage: false,
    };
  },
  methods: {
    showSearchArea() {
      this.searchArea = true;
      this.brandArea = false;
      this.myPage = false;
    },
    showBrandArea() {
      this.searchArea = false;
      this.brandArea = true;
      this.myPage = false;
    },
    showMyPage() {
      this.searchArea = false;
      this.brandArea = false;
      this.myPage = true;
    }
  },
};
</script>

<style scoped>
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
  font-size: var(--main-font-size);
  cursor: pointer;
}

li:hover {
  background-color: rgb(191, 207, 207);
  transition: background-color 100ms;
}

.is_active {
  color: var(--main-bg-color);
}
</style>