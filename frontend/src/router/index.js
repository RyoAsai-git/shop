import {
  createRouter,
  createWebHistory
} from 'vue-router'
import Welcome from '../components/Auth/Welcome'
import Search from '../components/Search/Search'
import Brand from '../components/Brand/Brand'
import Detail from '../components/Brand/Detail'
import MyPage from '../components/MyPage/MyPage'

const routes = [{
    path: '/welcome',
    name: 'Welcome',
    component: Welcome,
  },
  {
    path: '/search',
    name: 'search',
    component: Search,
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