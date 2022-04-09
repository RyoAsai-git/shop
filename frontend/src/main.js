import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import './assets/main.css'

import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { fas } from '@fortawesome/free-solid-svg-icons'
import { fab } from '@fortawesome/free-brands-svg-icons'
import { far } from '@fortawesome/free-regular-svg-icons'

library.add(fas, far, fab)
// createApp(App).component('font-awesome-icon', FontAwesomeIcon)

// createApp(App)
// // .component('font-awesome-icon', FontAwesomeIcon)
// .component('fa', FontAwesomeIcon )
// .use(router)
// .mount('#app')

var app = createApp(App)
app.component('font-awesome-icon', FontAwesomeIcon )
app.use(router)
app.mount('#app')