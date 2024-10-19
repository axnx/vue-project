<template>
  <div class="MyTest">
    <h1>Login</h1>

    <form>
  <label for="vname">Vorname:
    <input id="vname" name="vname">
  </label>
  <label for="zname">Zuname: 
    <input id="zname" name="zname">
  </label>

  
  <label for="v2name">Vorname:
    <input id="v2name" name="v2name">
  </label>
  <label for="z2name">Zuname: 
    <input id="z2name" name="z2name">
  </label>
  <input type="checkbox" id="alter" name="alter">
  <input type="submit" value="senden">

  <label for="fruit">Choose a fruit:</label>
<select id="fruit" name="fruit">
  <option value="apple">buy</option>
  <option value="banana">sell</option>
</select>

  </form>

 
  </div>
</template>


<script>

</script>

<style scoped>
 body {
  background-color: gray;
}
  label, input, select {
    display: block;
    margin-bottom: 10px;
  }
</style>
