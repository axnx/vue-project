<script setup>
import CountryImage from '../components/CountryImage.vue'
</script>
<!----------------------------------------------------------------------------->
<template>
  <div class="country">
    <h1>CountryView.vue</h1>
    <CountryImage/>
  </div>
</template>
<!----------------------------------------------------------------------------->
<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
