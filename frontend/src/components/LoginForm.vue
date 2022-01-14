<template>
  <div>
    <h2>ログイン</h2>
    <form>
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
      <button>ログインする</button>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      email: "",
      password: "",
    };
  },
};
</script>