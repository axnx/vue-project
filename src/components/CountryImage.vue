<script setup>
import { ref } from 'vue';

const message = ref("Button not clicked yet");

function handleClick(v) {
  message.value = `Button clicked! ${v}`;
}

const msg2 = ref("Button not clicked yet");

function handleClick2(event) {
  const buttonId = event.target.id;  // Get the ID of the clicked button
  msg2.value = `You clicked ${buttonId}`;
}

const ccode = ref("DE");
const fullimage = ref("/assets/svgs/IT.svg")

function changeImage(country) {
  console.log(country);
  ccode.value = country;
  console.log(ccode.value);
  fullimage.value = `/src/assets/svgs/${country}.svg`; // Update the full image path
  //fullimage.value = `/src/assets/svgs/NZ.svg`; // Update the full image path
  console.log(fullimage.value);
  //console.log(fullimage);
}
</script>
<!----------------------------------------------------------------------------->
<template>
  <div>
  <h1>CountryImage</h1>

  <img src="@/assets/svgs/DE.svg" width="200" height="100"/>
  <img src="@/assets/svgs/NZ.svg" width="200" height="100" alt="Country flag"/>
  <img src="@/assets/svgs/AT.svg" width="200" height="100" alt="Country flag"/>

  <button id="button1" @click="handleClick('button1')">Button1 Click me</button>
  <p>{{ message }}</p>

  <button id="button2" @click="handleClick2">Button 2 Click me</button>
  <p>{{ msg2 }}</p>
  
  <button id="button3" @click="changeImage('NL')">NL</button>
  <button id="button3" @click="changeImage('DK')">DK</button>
  <button id="button3" @click="changeImage('ES')">ES</button>
  <button id="button3" @click="changeImage('IT')">IT</button>
  <p>{{ fullimage }}</p>
  <p></p>
  <img :src="fullimage" width="100" height="100" />
  
  </div>

</template>
<!----------------------------------------------------------------------------->
<style>

</style>
