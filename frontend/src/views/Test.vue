<template>
  <body>
    <div class="main">
      <div id="app">
        <button v-on:click="openModal">Click</button>
      </div>
      <div id="overlay" v-show="showContent">
        <div id="content" class="modal">
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
.main {
  height: 100%;
  widows: 100%;
}
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
.modal {
  background: #fff;
  height: 50%;
  width: 50%;
  text-align: center;
  padding: 20px 0;
}
.modal form {
  width: 300px;
  margin: 20px auto;
}
.modal label {
  display: block;
  margin: 20px 0 10px;
}
.modal input {
  width: 100%;
  padding: 12 px 20 px;
  margin: 8 px auto;
  border-radius: 4 px;
  border: 1 px solid #eee;
  outline: none;
  box-sizing: border-box;
}
.modal span {
  font-weight: bold;
  text-decoration: underline;
  cursor: pointer;
}
.modal button {
  margin: 20px auto;
}
.change-form {
  font-size: 14px;
  margin: 10px;
}
</style>