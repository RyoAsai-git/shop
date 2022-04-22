<template>
  <div class="container welcome">
    <p>ようこそ！</p>
    <div v-if="shouldShowLoginForm">
      <LoginForm @redirectToHome="redirectToHome" />
      <p class="change-form">
        初めての方は<span @click="shouldShowLoginForm = false">こちら</span
        >をクリック
      </p>
    </div>
    <div v-if="!shouldShowLoginForm">
      <SignupForm @redirectToHome="redirectToHome" />
      <p class="change-form">
        アカウントをお持ちの方は<span @click="shouldShowLoginForm = true"
          >こちら</span
        >をクリック
      </p>
    </div>
  </div>
</template>

<script>
import LoginForm from "./LoginForm.vue";
import SignupForm from "./SignupForm.vue";

export default {
  components: {
    LoginForm,
    SignupForm,
  },
  data() {
    return {
      shouldShowLoginForm: true,
    };
  },

  methods: {
    redirectToHome() {
      this.$router.push({ name: "Shop" });
    },
  },

  created: function () {
    const accessToken = window.localStorage.getItem("access-token");
    if (accessToken) {
      this.$router.push({ name: "Shop" });
    }
  },
};
</script>

<style>
.welcome {
  text-align: center;
  padding: 20px 0;
}
.welcome form {
  width: 300px;
  margin: 20px auto;
}
.welcome label {
  display: block;
  margin: 20px 0 10px;
}
.welcome input {
  width: 100%;
  padding: 12px 20px;
  margin: 8px auto;
  border-radius: 4px;
  border: 1px solid #eee;
  outline: none;
  box-sizing: border-box;
}
.welcome span {
  font-weight: bold;
  text-decoration: underline;
  cursor: pointer;
}
.welcome button {
  margin: 20px auto;
}
.change-form {
  font-size: var(--sub-font-size);
  margin: 10px;
}
</style>