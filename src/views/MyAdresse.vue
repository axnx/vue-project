<template>
  <div class="Adresse">
    <h1>Adresse</h1>
    <form @submit.prevent="submitData">
      <label for="vorname">Vorname:
        <input id="vorname" name="vorname">
      </label>
      <label for="nachname">Nachname:
        <input id="nachname" name="nachname">
      </label>
      <label for="strasse">Strasse:
        <input id="strasse" name="strasse">
      </label>
      <label for="plz">PLZ:
        <input id="plz" name="plz">
      </label>
      <label for="ort">Ort:
        <input id="ort" name="ort">
      </label>
      <input type="submit" value="senden">
    </form>
  </div>
</template>


<script>
import axios from 'axios';

export default {
  data() {
    return {
      formData: {
        vorname: 'Homer',
        nachname: 'Simpson',
        strasse: 'Obststrasse 22',
        plz: '47585',
        ort: 'Stuttgart',
      }
    };
  },
  methods: {
    async submitData() {
      try {
        //const response = await axios.post('/api/post', 
        const response = await axios.post('/api/submit', 
          this.formData,
          {
            headers: {
              'Content-Type': 'application/json'
            }
          }
        );
        console.log(response.data);
      } catch (error) {
        console.error(error);
      }
    }
  }
};

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
