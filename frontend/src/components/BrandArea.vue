<template>
  <div class="brand_area">
    <img
      src="https://cld.fashionsnap.com/image/upload/asset/brand/images/2021/05/auraleelogo20210513-000.jpg"
      alt=""
      v-on:click="openModal"
      class="brand_image"
    />
        <img
      src="data:image/png;base64,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"
      alt=""
      v-on:click="openModal"
      class="brand_image"
    />
  </div>
</template>

<script>
</script>

<style scoped>
.brand_area {
  height: 100%;
  width: 80%;
  position: absolute;
  left: 20%;
  top: 0;
}

.brand_image {
  background-color: #ccc;
  width: 22%;
  -webkit-border-radius: 20px;
  border:1px solid #d3d3d3;
  margin-top: 30px;
  margin-left: 20px;
  aspect-ratio: 1;
}

</style>