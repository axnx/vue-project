<template>
    <div>
      <h2>Login</h2>
      <form @submit.prevent="handleLogin">
        <div>
          <label for="username">Username:</label>
          <input type="text" v-model="username" required />
        </div>
        <div>
          <label for="password">Password:</label>
          <input type="password" v-model="password" required />
        </div>
        <button type="submit">Login</button>
        <div v-if="error" class="error">{{ error }}</div>
      </form>
    </div>
  </template>
  
  <script>
  import AuthService from '@/services/auth.service';
  
  export default {
    data() {
      return {
        username: '',
        password: '',
        error: null,
      };
    },
    methods: {
      handleLogin() {
        AuthService.login(this.username, this.password)
          .then(() => {
            this.$router.push('/dashboard'); // Redirect to dashboard
          })
          .catch(err => {
            this.error = err.response.data.message || 'Login failed!';
          });
      },
    },
  };
  </script>
  
  <style>
  label, input, select {
    display: block;
    margin-bottom: 10px;
  }
  .error {
    color: red;
  }

  </style>
  