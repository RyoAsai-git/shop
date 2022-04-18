import { createStore } from 'vuex'
import test from "./modules/test";

const vuex = createStore({
  modules: {
    test
  }
})

export default vuex