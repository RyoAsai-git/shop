<template>
  <div id="overlay" v-show="showContent" @click="$emit('close')">
    <div class="modal">
      <img
        :src="val.image"
        alt=""
        class="modal-image"
      />
      <dir class="description-content">
        <h1 class="description-top item-text">{{ val.name }}</h1>
        <p class="description-text content">
          {{ val.description }}
        </p>
        <h2 class="description-url item-text">{{ val.url }}</h2>
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
</template>

<script>
export default {
  props: ["val"],
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

.content {
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 6;
  overflow: hidden;
}

.description-url {
  position: absolute;
  top: 310px;
  font-size: var(--sub-font-size);
  font-weight: 600;
}
</style>