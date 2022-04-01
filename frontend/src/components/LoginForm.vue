<template>
  <div>
    <h2>ログイン</h2>
    <form @submit.prevent="login">
      <input
        type="email"
        required
        placeholder="メールアドレス"
        v-model="email"
      />
      <input
        type="password"
        required
        placeholder="パスワード"
        v-model="password"
      />
      <div class="error">{{ error }}</div>
      <button>ログインする</button>
    </form>
  </div>
</template>

<script>
import axios from "axios";
import setItem from "../auth/setItem";

export default {
  emits: ["redirectToHome"],
  data() {
    return {
      email: "",
      password: "",
      error: null,
    };
  },
  methods: {
    async login() {
      this.error = null;
      try {
        const res = await axios.post("http://localhost:3000/auth/sign_in", {
          email: this.email,
          password: this.password,
        });
        if (!res) {
          throw new Error("メールアドレスかパスワードが違います");
        }
        if (!this.error) {
          // console.log(res.data.data.id);
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
  },
};
</script>

<style scoped>
button {
  text-decoration: none;
  background: #51b392;
  color: white;
  font-weight: bold;
  border: 0;
  border-radius: 3px;
  padding: 10px 20px;
  cursor: pointer;
}
</style>