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
      <button type="submit" @click="upload">
        upload
      </button>
    </section>
    <UploadImageList />
  </div>
</template>

<script>
// import { mapActions } from "vuex";
// import axios from "axios"
import UploadImageList from "../MyPage/UploadImageList.vue";

export default {
  components: {
    UploadImageList,
  },

  data() {
    return {
      imageFile: "",
    }
  },

  methods: {
    setImage(e) {
      e.preventDefault();
      this.imageFile = e.target.files[0];
    },

    async upload() {
      let formData = new FormData();
      console.log(this.imageFile);
      if (this.imageFile != null) {
        formData.append("image", this.imageFile);
      }
      console.log(formData);
      // const userId = window.localStorage.getItem("id");
      // try {
      //   const response = await axios.put(`http://localhost:3000/users/${userId}`, {
      //     headers: {
      //       "avatar": this.imageFile,
      //       "Content-Type": "multipart/form-data"
      //     }
      //   })
      //   console.log(response);
      // } catch (error) {
      //   console.error({ error });
      // }

    }
  }

  // name: "UserForm",
  // data: () => ({
  //   // title: "",
  //   imageFile: null,
  // }),
  // methods: {
  //   ...mapActions("users", ["createUser"]),
  //   setImage(e) {
  //     e.preventDefault();
  //     this.imageFile = e.target.files[0];
  //   },
  //   async upload() {
  //     let formData = new FormData();
  //     if (this.imageFile !== null) {
  //       formData.append("image", this.imageFile);
  //     }
  //     this.createUser(formData);
  //     this.resetForm();
  //   },
  //   resetForm() {
  //     this.imageFile = null;
  //   },
  // },
};
</script>