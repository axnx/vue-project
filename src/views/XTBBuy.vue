<template>
  <div class="Lager">
    <h1>XTBBuy</h1>

    <form>
  <label for="vname">Lager:
    <input id="vname" name="vname">
  </label>
  <label for="zname">Bezeichnung: 
    <input id="zname" name="zname">
  </label>
 
  <label for="fruit">Choose a fruit:</label>
<select id="fruit" name="fruit">
  <option value="apple">buy</option>
  <option value="banana">sell</option>
</select>
<label for="chkTest">aktive
  <input type="checkbox" id="chkTest" name="chkTest">
</label>
<input type="submit" value="senden">

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
