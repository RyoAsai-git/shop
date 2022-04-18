<template>
  <div>
    <h2>PostList</h2>
    <div v-for="post in posts" :key="post.id">
      <h3>{{ post.title }}</h3>
      <img :src="post.image_url" />
      <br />
      <button type="submit" @click="del(post.id)">delete</button>
    </div>
  </div>
</template>

<script>
import { mapActions, mapGetters } from "vuex";

export default {
  name: "PostList",
  created() {
    this.fetchPosts();
  },
  computed: {
    ...mapGetters("posts", ["posts"])
  },
  methods: {
    ...mapActions("posts", ["fetchPosts", "deletePost"]),
    del(id) {
      this.deletePost(id);
    }
  }
};
</script>