<template>
  <div class="Lager">
    <h1>Lager</h1>

    <form @submit.prevent="submitData">
      <label for="vname">Lager:
        <input id="vname" v-model="formData.vname" name="vname">
      </label>
      
      <label for="zname">Bezeichnung: 
        <input id="zname" v-model="formData.zname" name="zname">
      </label>

      <label for="fruit">Choose a fruit:</label>
      <select id="fruit" v-model="formData.fruit" name="fruit">
        <option value="apple">buy</option>
        <option value="banana">sell</option>
      </select>

      <label for="chkTest">Aktive
        <input type="checkbox" id="chkTest" v-model="formData.active" name="chkTest">
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
        vname: '',
        zname: '',
        fruit: 'apple', // default value
        active: false   // default false for checkbox
      }
    };
  },
  methods: {
    async submitData() {
      try {
        const response = await axios.post('/api/post', 
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
