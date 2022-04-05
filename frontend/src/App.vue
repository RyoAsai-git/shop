<template>
  <div id="app">
    <Sidebar v-if="!this.$route.path.match(/welcome$/)" />
    <div>
      <router-view></router-view>
    </div>
  </div>
</template>

<script>
import Sidebar from "./components/Sidebar.vue";

export default {
  name: "App",
  components: {
    Sidebar,
  },
  data() {
    return {
      accessToken: null,
    }
  },
  mounted: function() {
    const accessToken = window.localStorage.getItem('access-token')
    if (!accessToken) {
      this.$router.push({ name: "Welcome" });
    }
  }
};
</script>