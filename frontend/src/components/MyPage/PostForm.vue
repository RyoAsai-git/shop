<template>
  <div>
    <h2>PostForm</h2>
    <section>
      <label for="title">title: </label>
      <input type="text" name="title" v-model="title" placeholder="title" />
    </section>
    <section>
      <label for="image">image: </label>
      <input type="file" id="image" name="image" accept="image/png,image/jpeg" @change="setImage" />
    </section>
    <section>
      <button type="submit" @click="upload" :disabled="title === ''">upload</button>
    </section>
  </div>
</template>

<script>
import { mapActions } from "vuex";

export default {
  name: "PostForm",
  data: () => ({
    title: "",
    imageFile: null
  }),
  methods: {
    ...mapActions("posts", ["createPost"]),
    setImage(e) {
      e.preventDefault();
      this.imageFile = e.target.files[0];
    },
    async upload() {
      let formData = new FormData();
      formData.append("title", this.title);
      if (this.imageFile !== null) {
        formData.append("image", this.imageFile);
      }
      this.createPost(formData);
      this.resetForm();
    },
    resetForm() {
      this.title = "";
      this.imageFile = null;
    }
  }
};
</script>