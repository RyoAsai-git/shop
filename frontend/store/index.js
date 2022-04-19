import { createStore } from 'vuex'
import posts from "./modules/test";
import users from "./modules/user";

const vuex = createStore({
  modules: {
    posts,
    users
  }
})

export default vuex