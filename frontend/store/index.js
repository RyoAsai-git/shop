import { createStore } from 'vuex'
import posts from "./modules/posts";

const vuex = createStore({
  modules: {
    posts
  }
})

export default vuex