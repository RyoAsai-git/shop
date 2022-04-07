import {
  createRouter,
  createWebHistory
} from 'vue-router'
import Welcome from '../components/Auth/Welcome'
import Search from '../components/Search/Search'
import Brand from '../components/Brand/Brand'
import Detail from '../components/Brand/Detail'
import MyPage from '../components/MyPage/MyPage'
import Modal from '../components/Search/Modal'

const routes = [{
    path: '/welcome',
    name: 'Welcome',
    component: Welcome,
  },
  {
    path: '/search',
    name: 'search',
    component: Search,
    children: [{
      path: ':id',
      name: 'modal',
      component: Modal,
    },
    {
      path: ':id',
      name: 'detail',
      component: Detail,
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