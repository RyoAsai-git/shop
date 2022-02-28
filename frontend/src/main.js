import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import './assets/main.css'

import { library } from "@fortawesome/fontawesome-svg-core";

// 無料で使えるフォントをインポート
import { fab } from "@fortawesome/free-brands-svg-icons";
import { far } from "@fortawesome/free-regular-svg-icons";
import { fas } from "@fortawesome/free-solid-svg-icons";
// コンポネントをインポート
import {
    FontAwesomeIcon,
    FontAwesomeLayers,
    FontAwesomeLayersText
} from "@fortawesome/vue-fontawesome";

// ライブラリに追加
library.add(fas, far, fab);

createApp(App)
.use(router)
.component("FAIcon", FontAwesomeIcon)
.component('FALayers', FontAwesomeLayers)
.component('FAText', FontAwesomeLayersText)
.mount('#app')
