import { createRouter, createWebHistory } from 'vue-router'
import Welcome from '../views/Welcome'
import Home from '../views/Home'

const routes = [
  //TODO:この構成を変更する
  // /アクセス時にhome画面が表示されるように変更？？
  // {
  //   path: '/',
  //   name: 'Welcome',
  //   component: Welcome
  // },
  // {
  //   path: '/home',
  //   name: 'Home',
  //   component: Home
  // }
  {
    path: '/',
    name: 'Home',
    component: Home,
  },
  {
    path: '/welcome',
    name: 'Welcome',
    component: Welcome
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
