<template>
  <div>
    <h2>アカウントを登録</h2>
    <form>
      <input type="text" required placeholder="名前" v-model="name" />
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
      <input
        type="password"
        required
        placeholder="パスワード（確認用）"
        v-model="passwordConfirmation"
      />
      <button>登録する</button>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
    };
  },
};
</script>