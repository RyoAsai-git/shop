import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import './assets/main.css'

import { library } from '@fortawesome/fontawesome-svg-core'
import { faLeaf } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

library.add(faLeaf)

var app = createApp(App)
app.component('fa', FontAwesomeIcon )
app.use(router)
app.mount('#app')

// createApp(App).use(router).mount('#app')
