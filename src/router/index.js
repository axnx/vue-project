import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import LagerView from '../views/LagerView.vue'
import AdresseView from '@/views/AdresseView.vue'
import LoginView from '@/views/LoginView.vue'
import TimerView from '@/views/TimerView.vue'
import SystemView from '@/views/SystemView.vue'
import Dashboard from '@/components/Dashboard.vue'
import RegisterView from '@/views/RegisterView.vue'

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
    { path: '/login', name: 'Login', component: LoginView },
    { path: '/timer', name: 'Timer', component: TimerView },
    { path: '/system', name: 'System', component: SystemView },
    { path: '/register', name: 'Register', component: RegisterView },
    
    {
      path: '/dashboard',
      component: Dashboard,
      beforeEnter: (to, from, next) => {
        const token = localStorage.getItem('token');
        if (token) {
          next();
        } else {
          next('/login');
        }
      }
    }
    
    
  ]
})

export default router
