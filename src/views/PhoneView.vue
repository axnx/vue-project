<template>
    <div class="container">
      <h1>Cloudengine::core</h1>
      <p>This is a simple Vue.js application constrained to a maximum size of 800x300 pixels.</p>
      <button @click="showMessage">Click Me!</button>
      <div v-if="message" class="message">{{ message }}</div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        message: ''
      };
    },
    methods: {
      showMessage() {
        this.message = 'Button Clicked!';
      }
    }
  };
  </script>
  
  <style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #f0f0f0;
    background-image: url('/src/assets/jpg/frank-mckenna-OD9EOzfSOh0-unsplash.jpg'); /* Background image */
  }
  
  .container {
    max-width: 800px;
    max-height: 300px;
    width: 100%;
    height: 100%;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    background-color: white;
    border-radius: 8px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
  }
  
  button {
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    background-color: #007bff;
    color: white;
  }
  
  button:hover {
    background-color: #0056b3;
  }
  
  .message {
    margin-top: 10px;
  }
  </style>