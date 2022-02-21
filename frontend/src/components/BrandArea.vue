<template>
  <div class="brand_area">
    <img
      src="https://cld.fashionsnap.com/image/upload/asset/brand/images/2021/05/auraleelogo20210513-000.jpg"
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
  width: 30%;
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border:1px solid #d3d3d3;
}

</style>