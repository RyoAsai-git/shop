<template>
  <div id="overlay" v-show="showContent" @click="$emit('close')">
    <div class="modal">
      <img :src="shop.image" alt="" class="modal-image no-caret" />
      <dir class="description-area">
        <a :href="shop.url" class="shop-name item-text">{{ shop.name }}</a>
        <FAIcon
          :icon="['fas', 'angle-left']"
          class="favorite-button"
          @click="$router.back()"
        />
        <p class="shop-description description">
          {{ shop.description }}
        </p>
      </dir>
    </div>
    <div class="modal-right">
      <div class="modal-right-content">
        <h1 class="modal-right-top item-text">取扱ブランド</h1>
        <div class="brand-image-area">
          <div class="brand-image-content">
            <router-link
              :to="{ name: 'detail', params: { id: brand.id } }"
              v-for="brand in shop.brands"
              :key="brand.id"
            >
              <img :src="brand.image" class="brand-image no-caret" />
            </router-link>
          </div>
        </div>
      </div>
      <div class="modal-right-content">
        <div class="modal-right-top item-text">アクセス</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["shop"],
  data() {
    return {
      showContent: false,
    };
  },
};
</script>

<style scoped>
.modal {
  position: relative;
  height: 60%;
  width: 35%;
  padding: 1em;
  border-radius: 40px;
  background: var(--main-font-color);
}

.modal-image {
  width: 100%;
  border-radius: 20px;
  aspect-ratio: 5 / 3;
}

.description-area {
  position: absolute;
  width: 90%;
  top: 210px;
  left: 35px;
}

.favorite-button {
  position: absolute;
  left: 120px;
  top: 125px;
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

.shop-name {
  position: absolute;
  top: 120px;
  font-size: var(--main-font-size);
  text-decoration: none;
}

.shop-name:hover {
  color: var(--main-bg-color);
}

.shop-description {
  position: absolute;
  top: 160px;
  left: 0;
  font-size: var(--sub-font-size);
  font-weight: 600;
}

.brand-image-content {
  overflow-x: auto;
  white-space: nowrap;
  border-radius: 30px;
}

.brand-image {
  width: 40%;
  aspect-ratio: 3 / 3;
  border-radius: 20px;
  border: 1px solid #d3d3d3;
  margin-top: 55px;
  margin-left: 20px;
}
</style>