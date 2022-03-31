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
import LoginForm from "../components/LoginForm.vue";
import SignupForm from "../components/SignupForm.vue";
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
      this.$router.push({ name: "Home" });
      //動作せず

      //welcome.vueとhome.vueを統合すれば, login/signup -> home -> myPageへ
      // 孫コンポーネントまで値を渡すのですむ

      //それかログイン済みのユーザーIDをローカルストレージから取得できれば良い??
      this.router.push({ name: 'Home', params: { id: 1 }})
    },
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