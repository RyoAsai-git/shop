<template>
  <div id="overlay">
    <font-awesome-icon
      :icon="['fa', 'times']"
      class="back-button"
      @click="$router.back()"
    />
    <v-loading v-if="loading"></v-loading>
    <div class="form-modal" v-if="!loading">
      <div class="form-title">
        <p class="item-text">プロフィール</p>
      </div>
      <div class="preview-profile">
        <font-awesome-icon
          :icon="['fa-solid', 'user']"
          class="preview-icon no-caret"
          v-if="!url && !user.avatar_url"
        />
        <img
          :src="user.avatar_url"
          alt=""
          class="preview-image"
          v-if="user.avatar_url && !url"
        />
        <div v-if="url">
          <font-awesome-icon
            :icon="['fa', 'times']"
            class="delete-preview-button"
            @click="deletePreview"
          />
          <img :src="url" class="preview-image" />
        </div>
      </div>
      <section class="select-image-area">
        <label
          for="image"
          class="select-image-button item-text image-button"
          v-if="!this.imageFile"
        >
          画像を選択する
          <input
            type="file"
            id="image"
            name="image"
            accept="image/png,image/jpeg"
            style="display: none"
            ref="preview"
            @change="setImage()"
          />
        </label>
      </section>
      <section class="upload-button-area">
        <button
          type="submit"
          class="upload-image-button item-text image-button"
          @click="uploadImage()"
          v-if="this.imageFile"
        >
          プロフィール画像を変更する
        </button>
      </section>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      userId: this.$route.params.id,
      user: "",
      loading: false,
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
    setImage() {
      const file = this.$refs.preview.files[0];
      this.url = URL.createObjectURL(file);
      this.imageFile = file;
    },

    deletePreview() {
      this.url = "";
      URL.revokeObjectURL(this.url);
      this.imageFile = "";
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

  created: async function () {
    this.loading = true;
    const userId = this.userId;
    console.log(userId);
    try {
      const res = await axios.get(`http://localhost:3000/users/${userId}`);
      console.log(res);
      this.user = res.data;
      this.loading = false;
    } catch (error) {
      console.error(error);
      if (error.request.status) {
        this.$router.push({ path: "/:catchAll(.*)" });
      }
    }
  },
};
</script>

<style scoped>
.back-button {
  position: absolute;
  top: 15%;
  left: 30%;
  height: 50px;
  color: #fff;
  cursor: pointer;
}

.form-modal {
  background: #fff;
  border-radius: 30px;
  display: inline-block;
  text-align: center;
  width: 300px;
}

.form-title {
  margin-top: 10px;
  margin-bottom: 10px;
}

.preview-profile {
  border: 0.5px solid #d3d3d3;
  border-radius: 50px;
  width: 180px;
  overflow: hidden;
  margin: 0 auto;
}

.preview-icon {
  font-size: 180px;
}

.preview-image {
  height: 180px;
  aspect-ratio: 1;
}

.delete-preview-button {
  position: absolute;
  height: 25px;
  cursor: pointer;
}

.select-image-area {
  margin-top: 20px;
}

.select-image-button {
  max-width: 120px;
}

.upload-image-button {
  max-width: 280px;
  border: solid #d3d3d3;
}

.upload-button-area {
  margin-bottom: 10px;
}
</style>