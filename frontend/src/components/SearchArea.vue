<template>
  <div>
    <div class="search-area">
      <div class="search-area-content">
        <div
          class="search-area-image-wrap"
          v-for="shop in shops"
          :key="shop.id"
        >
          <img src="" alt="" @click="openModal" class="search-area-image" />
        </div>
        <!-- <div class="search-area-image-wrap">
          <img
            src="https://media.wwdjapan.com/wp-content/uploads/2018/12/26155656/181226_select_011.jpg"
            alt=""
            @click="openModal"
            class="search-area-image"
          />
        </div> -->
      </div>
    </div>
    <div id="overlay" v-show="showContent" @click="closeModal">
      <div class="modal">
        <img
          src="data:image/jpeg;base64,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"
          alt=""
          class="modal-image"
        />
        <dir class="description-content">
          <h1 class="description-top item-text">店舗情報</h1>
          <p class="description-text">
            あああああああああああああああああああああああああああああああああ
          </p>
        </dir>
      </div>
      <div class="modal-right">
        <div class="modal-right-content">
          <h1 class="modal-right-top item-text">取扱ブランド</h1>
        </div>
        <div class="modal-right-content">
          <div class="modal-right-top item-text">アクセス</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      shops: {},
      showContent: false,
    };
  },

  methods: {
    openModal: function () {
      this.showContent = true;
    },
    closeModal: function () {
      this.showContent = false;
    },

    window: (onload = async function () {
      try {
        const res = await axios.get("http://localhost:3000/shops");
        console.log(res);
        this.shops = res.data;
        console.log(this.shops);
      } catch (error) {
        console.error(error);
      }
    }),
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

.modal {
  position: relative;
  height: 420px;
  width: 250px;
  padding: 1em;
  border-radius: 40px;
  background: var(--main-font-color);
}

.modal-image {
  width: 100%;
  border-radius: 20px;
  aspect-ratio: 5 / 3;
}

.modal-right-content {
  display: flex;
  flex-direction: column;
  position: relative;
  height: 185px;
  width: 280px;
  margin-left: 10px;
  border-radius: 40px;
  background: var(--main-font-color);
}

.modal-right-content:nth-child(2n) {
  height: 260px;
  margin-top: 10px;
}

.modal-right-top {
  position: absolute;
  top: 20px;
  left: 40px;
  font-size: var(--main-font-size);
}

.description-content {
  position: absolute;
  width: 200px;
  top: 65px;
  left: 35px;
}

.description-top {
  position: absolute;
  top: 120px;
  font-size: var(--main-font-size);
}

.description-text {
  position: absolute;
  top: 165px;
  font-size: var(--sub-font-size);
  font-weight: 600;
}
</style>