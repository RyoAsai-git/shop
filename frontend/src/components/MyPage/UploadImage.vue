<template>
  <div id="overlay">
    <div class="form-modal">
      <div v-if="url">
        <img :src="url" class="preview-image"/>
      </div>
      <section>
        <label for="image"></label>
        <input
          type="file"
          id="image"
          name="image"
          accept="image/png,image/jpeg"
          ref="preview"
          @change="uploadFile"
        />
      </section>
      <section>
        <button type="submit" @click="uploadImage">upload</button>
      </section>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      imageFile: "",
      url: "",
    };
  },

  watch: {
    $route() {
      location.reload();
    },
  },

  methods: {
    uploadFile() {
      console.log(this.$refs.preview.files[0]);
      const file = this.$refs.preview.files[0];
      this.url = URL.createObjectURL(file);
      this.imageFile = file;
      console.log(this.imageFile);
    },

    async uploadImage() {
      const formData = new FormData();
      formData.append("avatar", this.imageFile);
      const headers = { "content-type": "multipart/form-data" };
      const userId = window.localStorage.getItem("id");
      try {
        const res = await axios.put(
          `http://localhost:3000/users/${userId}`,
          formData,
          { headers }
        );
        console.log(res);
        this.$router.push({ name: "MyPage" });
      } catch (error) {
        console.error({ error });
      }
    },
  },

  mounted: function () {
    console.log(this.$refs.preview);
  },
};
</script>

<style scoped>
.form-modal {
  background: #fff;
  border-radius: 30px;
  /* height: 300px; */
}

.preview-image {
  height: 300px;
  aspect-ratio: 1;
}
</style>