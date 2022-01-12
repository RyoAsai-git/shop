<template>
  <div class="container welcome">
    <p>ようこそ！</p>
    <LoginForm />
  </div>
</template>

<script>
import LoginForm from '../components/LoginForm.vue'
export default {
  components: {
    LoginForm,
  }
}
</script>

<style scoped>
  .welcome {
    text-align: center;
    padding: 20px 0;
  }
</style>