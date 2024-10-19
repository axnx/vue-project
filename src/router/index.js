import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import LagerView from '../views/LagerView.vue'
import AdresseView from '@/views/AdresseView.vue'
import LoginView from '@/views/LoginView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    { path: '/', name: 'home', component: HomeView },
    { path: '/about', name: 'about',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/AboutView.vue')
    },
    { path: '/Adresse', name: 'Adresse', component: AdresseView },
    { path: '/Lager', name: 'Lager', component: LagerView },
    { path: '/login', name: 'Login', component: LoginView }
  ]
})

export default router
