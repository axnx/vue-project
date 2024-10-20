<script setup>

import Abteilung from '../components/Abteilung.vue'
import AbteilungListbox from '../components/AbteilungListbox.vue'
import { ref } from 'vue'
const dynamicId = ref("übergebener Wert") // Example value

</script>
<!---------------------------------------------------------------------->
<template>
  <div class="test">
    <h1>TestView.vue</h1>
    <Abteilung :msg="dynamicId"/>
    <hr>
    <AbteilungListbox :msg="dynamicId"/>
  </div>
</template>
<!---------------------------------------------------------------------->
<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
