import {
  createRouter,
  createWebHistory
} from 'vue-router'
import Welcome from '../components/Auth/Welcome'
import Shop from '../components/Shop/Shop'
import Brand from '../components/Brand/Brand'
import Detail from '../components/Brand/Detail'
import MyPage from '../components/MyPage/MyPage'
import UploadImage from '../components/MyPage/UploadImage'
import Modal from '../components/Shop/Modal'
import NotFound from '../components/NotFound'

const routes = [{
    path: '/welcome',
    name: 'Welcome',
    component: Welcome,
  },
  {
    path: '/shop',
    name: 'Shop',
    component: Shop,
    children: [{
      path: ':id',
      name: 'Modal',
      component: Modal,
    }]
  },
  {
    path: '/brand',
    name: 'Brand',
    component: Brand,
    children: [{
      path: ':id',
      name: 'Detail',
      component: Detail,
    }]
  },
  {
    path: '/myPage',
    name: 'MyPage',
    component: MyPage,
    children: [{
      path: 'uploadImage/:id',
      name: 'UploadImage',
      component: UploadImage,
    }]
  },
  {
    path: '/:catchAll(.*)',
    name: '404',
    component: NotFound,
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router