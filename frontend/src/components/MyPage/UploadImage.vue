<template>
  <div id="overlay">
    <h2>UserForm</h2>
    <section>
      <label for="image">image: </label>
      <input
        type="file"
        id="image"
        name="image"
        accept="image/png,image/jpeg"
        @change="setImage"
      />
    </section>
    <section>
      <button type="submit" @click="uploadImage">upload</button>
    </section>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      imageFile: null,
    };
  },

  watch: {
    $route() {
      location.reload();
    },
  },

  methods: {
    setImage(e) {
      e.preventDefault();
      this.imageFile = e.target.files[0];
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
        this.$router.push({ name: 'MyPage' })
      } catch (error) {
        console.error({ error });
      }
    },
  },
};
</script>