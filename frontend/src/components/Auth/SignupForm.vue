<template>
  <div>
    <h2>アカウントを登録</h2>
    <form @submit.prevent="signUp">
      <input
        type="text"
        required
        placeholder="名前"
        autocomplete="off"
        v-model="name"
      />
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
      <input
        type="password"
        required
        placeholder="パスワード（確認用）"
        autocomplete="off"
        v-model="passwordConfirmation"
      />
      <div class="error">{{ error }}</div>
      <button>登録する</button>
    </form>
  </div>
</template>

<script>
import axios from "axios";
import setItem from "../../auth/setItem";

export default {
  name: "SignupPage",
  emits: ["redirectToHome"],
  data() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      error: null,
    };
  },

  methods: {
    async signUp() {
      this.error = null;
      try {
        const res = await axios.post(`${process.env.VUE_APP_API_URL}/auth`, {
          name: this.name,
          email: this.email,
          password: this.password,
          passwordConfirmation: this.passwordConfirmation,
        });
        if (!res) {
          throw new Error("アカウントを登録できませんでした");
        }
        if (!this.error) {
          setItem(res.headers, res.data);
          this.$emit("redirectToHome");
        }
        console.log({ res });
        return res;
      } catch (error) {
        this.error = "アカウントを登録できませんでした";
        console.error({ error });
      }
    },
  },
};
</script>

<style scoped>
button {
  text-decoration: none;
  background: var(--main-bg-color);
  color: white;
  font-weight: bold;
  border: 0;
  border-radius: 3px;
  padding: 10px 20px;
  cursor: pointer;
}
</style>