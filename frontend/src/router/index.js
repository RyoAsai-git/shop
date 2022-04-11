import {
  createRouter,
  createWebHistory
} from 'vue-router'
import Welcome from '../components/Auth/Welcome'
import Shop from '../components/Shop/Shop'
import Brand from '../components/Brand/Brand'
import Detail from '../components/Brand/Detail'
import MyPage from '../components/MyPage/MyPage'
import Modal from '../components/Shop/Modal'

const routes = [{
    path: '/welcome',
    name: 'Welcome',
    component: Welcome,
  },
  {
    path: '/shop',
    name: 'shop',
    component: Shop,
    children: [{
      path: ':id',
      name: 'modal',
      component: Modal,
    }]
  },
  {
    path: '/brand',
    name: 'brand',
    component: Brand,
    children: [{
      path: ':id',
      name: 'detail',
      component: Detail,
    }]
  },
  {
    path: '/myPage',
    name: 'myPage',
    component: MyPage,
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router