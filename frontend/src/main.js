import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from '../store/index.js'
import './assets/main.css'
import Loading from '../src/components/Loading'

import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { fas } from '@fortawesome/free-solid-svg-icons'
import { fab } from '@fortawesome/free-brands-svg-icons'
import { far } from '@fortawesome/free-regular-svg-icons'

library.add(fas, far, fab)

const app = createApp(App)
app.component('font-awesome-icon', FontAwesomeIcon )
app.component('v-loading', Loading)
app.use(router)
app.use(store)
app.mount('#app')