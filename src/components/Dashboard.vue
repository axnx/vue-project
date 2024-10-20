<template>
    <div class="dashboard">
      <h2>Welcome, {{ username }}</h2>
      <p>You are logged in as {{ email }}</p>
      <button @click="logout">Logout</button>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    data() {
      return {
        username: '',
        email: ''
      };
    },
    async created() {
      // Fetch user info after loading the dashboard
      try {
        const token = localStorage.getItem('token');
        const response = await axios.get('/api/user', {
          headers: {
            Authorization: `Bearer ${token}`
          }
        });
        this.username = response.data.username;
        this.email = response.data.email;
      } catch (error) {
        alert('Session expired or invalid token. Please login again.');
        this.$router.push('/login');
      }
    },
    methods: {
      logout() {
        localStorage.removeItem('token');
        this.$router.push('/login');
      }
    }
  };
  </script>
  
  <style scoped>
  .dashboard {
    max-width: 600px;
    margin: 50px auto;
    text-align: center;
  }
  
  button {
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #42b983;
    border: none;
    color: white;
    cursor: pointer;
    font-size: 16px;
  }
  </style>
  