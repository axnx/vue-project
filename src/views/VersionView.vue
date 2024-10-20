<script setup>
import VersionHistory from '../components/VersionHistory.vue'
</script>

<template>
  <div class="version">
    <h1>VersionView.vue</h1>
    <VersionHistory/>
  </div>
</template>

<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
