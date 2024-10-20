<template>
    <div>
      <h2>Register</h2>
      <form @submit.prevent="handleRegister">
        <div>
          <label for="username">Username:</label>
          <input type="text" v-model="username" required />
        </div>
        <div>
          <label for="email">Email:</label>
          <input type="email" v-model="email" required />
        </div>
        <div>
          <label for="password">Password:</label>
          <input type="password" v-model="password" required />
        </div>
        <button type="submit">Register</button>
        <div v-if="errorMessage" class="error">{{ errorMessage }}</div>
        <div v-if="successMessage" class="success">{{ successMessage }}</div>
      </form>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    data() {
      return {
        username: '',
        email: '',
        password: '',
        errorMessage: '',
        successMessage: ''
      };
    },
    methods: {
      async handleRegister() {
        try {
          const response = await axios.post('/api/login/register', {
            username: this.username,
            email: this.email,
            password: this.password
          });
          this.successMessage = response.data.message;
          this.errorMessage = ''; // Clear any previous error messages
          // Optionally, you can redirect the user to the login page or another page
          // this.$router.push('/login');
        } catch (error) {
          this.errorMessage = error.response?.data?.message || 'Registration failed';
          this.successMessage = ''; // Clear any previous success messages
        }
      }
    }
  };
  </script>
  
  <style>
  label, input {
    display: block;
    margin-bottom: 10px;
  }
  .error {
    color: red;
  }
  .success {
    color: green;
  }
  </style>  