<template>
  <div id="app">
    <Sidebar v-if="!this.$route.path.match(/welcome$/)" />
    <div>
      <router-view />
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
    console.log(this.shouldShowHome);
    const accessToken = window.localStorage.getItem('access-token')
    console.log(accessToken);
    if (!accessToken) {
      this.$router.push({ name: "Welcome" });
    }
  }
};
</script>