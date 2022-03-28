<template>
  <div id="overlay" v-show="showContent" @click="$emit('close')">
    <div class="modal">
      <img :src="shop.image" alt="" class="modal-image" />
      <dir class="description-area">
        <a :href="shop.url" class="shop-name item-text">{{ shop.name }}</a>
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
            <img
              :src="brand.image"
              alt=""
              class="brand-image"
              v-for="brand in shop.brands"
              :key="brand.id"
            />
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

.description-area {
  position: absolute;
  width: 200px;
  top: 65px;
  left: 35px;
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