<template>
    <div class="timer">
      <h2>Timer: {{ formattedTime }}</h2>
      <button @click="startTimer" :disabled="isRunning">Start</button>
      <button @click="stopTimer" :disabled="!isRunning">Stop</button>
      <button @click="resetTimer">Reset</button>
      <CookieManager/>
    </div>
  </template>
  
  <script>
  import CookieManager from './CookieManager.vue';

  export default {
    components: {
        CookieManager,
    },
    data() {
      return {
        time: 0, // Time in seconds
        timerInterval: null,
        isRunning: false,
      };
    },
    computed: {
      formattedTime() {
        const minutes = String(Math.floor(this.time / 60)).padStart(2, '0');
        const seconds = String(this.time % 60).padStart(2, '0');
        return `${minutes}:${seconds}`;
      },
    },
    methods: {
      startTimer() {
        if (!this.isRunning) {
          this.isRunning = true;
          this.timerInterval = setInterval(() => {
            this.time++;
          }, 1000);
        }
      },
      stopTimer() {
        clearInterval(this.timerInterval);
        this.isRunning = false;
      },
      resetTimer() {
        this.stopTimer();
        this.time = 0;
      },
    },
    beforeDestroy() {
      // Clear the interval if the component is destroyed
      clearInterval(this.timerInterval);
    },
  };
  </script>
  
  <style scoped>
  .timer {
    text-align: center;
    margin-top: 20px;
  }
  button {
    margin: 5px;
  }
  </style>
  