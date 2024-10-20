<template>
  <div class="Adresse">
    <h1>Adresse</h1>
    
    <form @submit.prevent="submitData">
      <label for="vorname">Vorname:
        <input id="vorname" name="vorname" v-model="formData.vorname">
      </label>
      <label for="nachname">Nachname:
        <input id="nachname" name="nachname" v-model="formData.nachname">
      </label>
      <label for="strasse">Strasse:
        <input id="strasse" name="strasse" v-model="formData.strasse">
      </label>
      <label for="plz">PLZ:
        <input id="plz" name="plz" v-model="formData.plz">
      </label>
      <label for="ort">Ort:
        <input id="ort" name="ort" v-model="formData.ort">
      </label>
      <input type="submit" value="senden">
    </form>

  </div>
    <!-- Table Component -->
    <AdresseTable :users="users"></AdresseTable>
  
</template>

<script>
import AdresseTable from './AdresseTable.vue';
import axios from 'axios';

export default {
  components: {
    AdresseTable // Hier registrierst du die AdresseTable-Komponente
  },
  data() {
    return {
      formData: {
        vorname: '',
        nachname: '',
        strasse: '',
        plz: '',
        ort: '',
      }
    };
  },
  methods: {
    async submitData() {
      try {
        //const response = await axios.post('/api/post', 
        const response = await axios.post('/api/user/submit', 
          this.formData,
          {
            headers: {
              'Content-Type': 'application/json'
            }
          }
        );
        console.log(response.data);

        // Benutzerliste nach dem erfolgreichen Absenden abrufen
        await this.fetchUsers();

        // Optional: Formular zurücksetzen
        /*
        this.formData = {
          vorname: '',
          nachname: '',
          strasse: '',
          plz: '',
          ort: '',
        };
      */
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
