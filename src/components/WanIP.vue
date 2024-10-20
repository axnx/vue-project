<template>
    <div id="app">
      <h1>Your External IP Address:</h1>
      <h2 v-if="ip" class="ip-display">{{ ip }}</h2>
      <p v-else>Loading...</p>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        ip: null,
      };
    },
    mounted() {
      this.fetchIP();
    },
    methods: {
      async fetchIP() {
        try {
          const response = await fetch('http://ip.jsontest.com/');
          const data = await response.json();
          this.ip = data.ip;
        } catch (error) {
          console.error('Error fetching IP:', error);
        }
      },
    },
  };
  </script>
  
  <style>
  .ip-display {
    font-size: 48px; /* Adjust size as needed */
    font-weight: bold;
    color: #333; /* Change color if desired */
  }
  </style>
  