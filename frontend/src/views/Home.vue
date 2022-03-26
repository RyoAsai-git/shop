<template>
  <div class="main">
    <div class="navbar">
      <ul class="navbar-list">
        <li @click="showSearch">
          <p class="item-text" :class="{ is_active: search }">さがす</p>
        </li>
        <li @click="showBrand">
          <p class="item-text" :class="{ is_active: brand }">ブランド</p>
        </li>
        <li @click="showMyPage">
          <p class="item-text" :class="{ is_active: myPage }">マイページ</p>
        </li>
      </ul>
    </div>
    <Search v-if="search" />
    <Brand v-if="brand" />
    <MyPage v-if="myPage" />
  </div>
</template>

<script>
import Search from "../components/Search/Search";
import Brand from "../components/Brand/Brand";
import MyPage from "../components/MyPage/MyPage";

export default {
  components: {
    Search,
    Brand,
    MyPage,
  },
  data() {
    return {
      search: true,
      brand: false,
      myPage: false,
    };
  },
  methods: {
    showSearch() {
      this.search = true;
      this.brand = false;
      this.myPage = false;
    },
    showBrand() {
      this.search = false;
      this.brand = true;
      this.myPage = false;
    },
    showMyPage() {
      this.search = false;
      this.brand = false;
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