import { createStore } from 'vuex'
import posts from "./modules/test";

const vuex = createStore({
  modules: {
    posts
  }
})

export default vuex