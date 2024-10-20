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
      <div v-if="errorMessage" class="error">{{ errorMessage }}</div> <!-- Changed from 'error' to 'errorMessage' -->
    </form>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      username: '',  // Changed from 'email' to 'username' for consistency with the login API
      password: '',
      errorMessage: ''
    };
  },
  methods: {
    async handleLogin() {  // Changed from 'login' to 'handleLogin' to match the template
      try {
        const response = await axios.post('/api/login', {
          username: this.username,  // Use 'username' instead of 'email'
          password: this.password
        });

        // Save the token in local storage
        localStorage.setItem('token', response.data.token);

        // Redirect or handle successful login
        alert('Login successful');
        this.$router.push('/api/dashboard'); // Redirect to dashboard after successful login
      } catch (error) {
        this.errorMessage = error.response?.data?.message || 'Login failed';
      }
    }
  }
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
