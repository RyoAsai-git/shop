import { createRouter, createWebHistory } from 'vue-router'
import Welcome from '../views/Welcome'
import Home from '../views/Home'

const routes = [
  {
    path: '/',
    name: 'Welcome',
    component: Welcome,
  },
  {
    path: '/home',
    name: 'Home',
    component: Home,
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
