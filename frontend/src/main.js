import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import './assets/main.css'

// import { library } from "@fortawesome/fontawesome-svg-core";

// // 無料で使えるフォントをインポート
// import { fab } from "@fortawesome/free-brands-svg-icons";
// import { far } from "@fortawesome/free-regular-svg-icons";
// import { fas } from "@fortawesome/free-solid-svg-icons";
// // コンポネントをインポート
// import {
//     FontAwesomeIcon,
//     FontAwesomeLayers,
//     FontAwesomeLayersText
// } from "@fortawesome/vue-fontawesome";

import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { fas } from '@fortawesome/free-solid-svg-icons'
import { fab } from '@fortawesome/free-brands-svg-icons'
import { far } from '@fortawesome/free-regular-svg-icons'

// // ライブラリに追加
// library.add(fas, far, fab);

library.add(fas, far, fab)
// Vue.component('font-awesome-icon', FontAwesomeIcon)

createApp(App)
.use(router)
.component('font-awesome-icon', FontAwesomeIcon)
// .component("FAIcon", FontAwesomeIcon)
// .component('FALayers', FontAwesomeLayers)
// .component('FAText', FontAwesomeLayersText)
.mount('#app')
