<template>
  <div class="brand-details-body">
    <div class="brand-details-header">
      <FAIcon
        :icon="['fas', 'angle-left']"
        class="back-button"
        @click="$emit('close')"
      />
    </div>
    <div class="brand-details-main">
      <div class="brand-details-content">
        <img :src="val.image" alt="" class="brand-details-background-image" />
      </div>
      <img :src="val.image" alt="" class="brand-image brand-icon-details" />
      <div class="brand-description-area">
        <h1 class="brand-name">{{ val.name }}</h1>
        <p class="brand-description-content">{{ val.description }}</p>
      </div>
      <div class="brand-button">
        <p class="button-text">このブランドをフォローする</p>
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
.brand-details-body {
  position: absolute;
  height: 100%;
  width: 80%;
  left: 20%;
  top: 0;
  margin-left: 20px;
}

.back-button {
  height: 30px;
  width: 30px;
  margin-top: 15px;
  margin-left: 20px;
}

.back-button:hover {
  color: var(--main-bg-color);
}

.brand-details-background-image {
  height: 350px;
  width: 100%;
  object-fit: cover;
}

.brand-icon-details {
  position: absolute;
  width: 15%;
  top: 120px;
  left: 100px;
  border-radius: 20px;
  border: 1px solid #d3d3d3;
}

.brand-description-area {
  width: 90%;
  margin-left: 40px;
}

.brand-name {
  font-weight: 600;
  font-size: 20px;
  color: #333333;
}

.brand-description-content {
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 3;
  overflow: hidden;
}

.brand-button {
  position: absolute;
  width: 230px;
  top: 500px;
  left: 0;
  right: 0;
  margin: auto;
  border-radius: 20px;
  background-color: var(--main-bg-color);
  line-height: 40px;
  text-align: center;
  cursor: pointer;
}

.button-text {
  font-weight: bold;
  color: var(--main-font-color);
}
</style>