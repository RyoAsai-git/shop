<template>
  <div>
    <h2>ログイン</h2>
    <form @submit.prevent="login">
      <input
        type="email"
        required
        placeholder="メールアドレス"
        autocomplete="off"
        v-model="email"
      />
      <input
        type="password"
        required
        placeholder="パスワード"
        autocomplete="off"
        v-model="password"
      />
      <div class="error">{{ error }}</div>
      <button>ログインする</button>
    </form>
    <form @submit.prevent="guestLogin">
      <div class="error">{{ guestError }}</div>
      <button>ゲストログイン</button>
    </form>
  </div>
</template>

<script>
import axios from "axios";
import setItem from "../../auth/setItem";

export default {
  name: "LoginPage",
  emits: ["redirectToHome"],
  data() {
    return {
      email: "",
      password: "",
      error: null,
      guestError: null,
    };
  },

  methods: {
    async login() {
      this.error = null;
      try {
        const res = await axios.post(
          `${process.env.VUE_APP_API_URL}/auth/sign_in`,
          {
            email: this.email,
            password: this.password,
          }
        );
        if (!res) {
          throw new Error("メールアドレスかパスワードが違います");
        }
        if (!this.error) {
          setItem(res.headers, res.data);
          this.$emit("redirectToHome");
        }
        console.log({ res });
        return res;
      } catch (error) {
        console.log({ error });
        this.error = "メールアドレスかパスワードが違います";
      }
    },

    async guestLogin() {
      this.guestError = null;
      try {
        const res = await axios.post(
          `${process.env.VUE_APP_API_URL}/auth/sign_in`,
          {
            email: process.env.VUE_APP_GUEST_EMAIL,
            password: process.env.VUE_APP_GUEST_PASSWORD
          }
        );
        if (!res) {
          throw new Error("ゲストログイン用のメールアドレスかパスワードが違います");
        }
        if (!this.guestError) {
          setItem(res.headers, res.data);
          this.$emit("redirectToHome");
        }
        console.log({ res });
        return res;
      } catch (guestError) {
        console.log({ guestError });
        this.guestError = "ゲストログイン用のメールアドレスかパスワードが違います";
      }
    },
  },
};
</script>

<style scoped>
button {
  text-decoration: none;
  /* background: #51b392; */
  background: var(--main-bg-color);
  color: white;
  font-weight: bold;
  border: 0;
  border-radius: 3px;
  padding: 10px 20px;
  cursor: pointer;
}
</style>