<template>
  <body>
    <div id="app">
      <button v-on:click="openModal">Click</button>
    </div>
    <div id="overlay" v-show="showContent">
      <div id="content">
        <LoginForm v-if="!shouldShowLoginForm" />
        <p class="change-form">
          初めての方は<span @click="shouldShowLoginForm = false">こちら</span
          >をクリック
        </p>
        <SignupForm v-if="shouldShowLoginForm" />
        <p class="change-form">
          アカウントをお持ちの方は<span @click="shouldShowLoginForm = true"
            >こちら</span
          >をクリック
        </p>
        <button v-on:click="closeModal">close</button>
      </div>
    </div>
  </body>
</template>

<script>
import LoginForm from "../components/LoginForm.vue";
import SignupForm from "../components/SignupForm.vue";

export default {
  name: "#app",
  components: {
    LoginForm,
    SignupForm,
  },
  data() {
    return {
      showContent: false,
      shouldShowLoginForm: false,
    };
  },
  methods: {
    openModal: function () {
      this.showContent = true;
    },
    closeModal: function () {
      this.showContent = false;
    },
  },
};
</script>

<style>
#overlay {
  z-index: 1;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  display: flex;
  align-items: center;
  justify-content: center;
}

#content {
  z-index: 2;
  width: 50%;
  padding: 1em;
  background: #fff;
}

/* .welcome {
  text-align: center;
  padding: 20px 0;
} */
</style>