<template>
  <div id="overlay" v-show="showContent" @click="$emit('close')">
    <div class="modal">
      <img :src="shop.image" alt="" class="modal-image" />
      <dir class="description-content">
        <h1 class="description-top item-text">{{ shop.name }}</h1>
        <p class="description-text content">
          {{ shop.description }}
        </p>
        <h2 class="description-url item-text">{{ shop.url }}</h2>
      </dir>
    </div>
    <div class="modal-right">
      <div class="modal-right-content">
        <h1 class="modal-right-top item-text">
          取扱ブランド
          <!-- {{ brands.name }} -->
          <!-- {{ brand.name }} -->
        </h1>
        <div class="brand-image-area">
          <div class="brand-image-content">
            <img :src="brands.image" alt="" class="brand-image" />
            <img :src="brands.image" alt="" class="brand-image" />
            <img :src="brands.image" alt="" class="brand-image" />
            <img :src="brands.image" alt="" class="brand-image" />
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
  props: ["shop", "brands"],
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
  top: 160px;
  font-size: var(--sub-font-size);
  font-weight: 600;
}

.description-url {
  position: absolute;
  top: 310px;
  font-size: var(--sub-font-size);
  font-weight: 600;
}

.brand-image-area {
  /* display: inline-block;
  overflow-x: scroll; */
  overflow-x: auto;
  white-space: nowrap;
  -webkit-overflow-scrolling: touch;
}

.brand-image-content {

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