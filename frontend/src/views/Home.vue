<template>
  <body>
    <header>
      <h1 class="headline">
        <a>サンプルのサイト</a>
      </h1>
      <ul class="nav-list">
        <li class="nav-list-item">
          <a>Home</a>
        </li>
        <li class="nav-list-item">
          <a>Topic</a>
        </li>
        <li class="nav-list-item">
          <a>About</a>
        </li>
        <li class="nav-list-item">
          <a>Login</a>
        </li>
        <!-- <li class="nav-list-item">
          <a href=""></a>
          About
          </li>
        <li class="nav-list-item">Topic</li> -->
        <!-- <li class="nav-list-item"><a @click="shouldShowAuthForm = true">Login</a></li>
        <v-btn class="nav-list-item" @click="shouldShowAuthForm = true">Login</v-btn> -->
      </ul>
    </header>
    <div class="container welcome">
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
      <footer>
        <p>© All rights reserved by shop.</p>
      </footer>
  </body>
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
      shouldShowAuthForm: false,
      shouldShowLoginForm: false,
    };
  },

  methods: {
    redirectToHome() {
      this.$router.push({ name: "Home" });
    },
  },
};
</script>

<style>
* {
  margin: 0;
  padding: 0;
}
header {
  width: 100%;
  padding: 15px 0;
  margin: 0 auto;
  text-align: center;
  background: #fff;
}
header .headline {
  font-size: 32px;
}
.nav-list {
  text-align: center;
  padding: 10px 0;
  margin: 0 auto;
}
.nav-list-item {
  list-style: none;
  display: inline-block;
  margin: 0 20px;
}
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
  font-size: 14px;
  margin: 10px;
}
footer {
  width: 100%;
  height: 80px;
  text-align: center;
  padding: 50px 0;
  background-color: #fff;
}
.footer-text {
  color: #fff;
}
</style>