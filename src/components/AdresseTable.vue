<template>
  <div class="AdresseTable">
    <h1>Adress Tabelle</h1>
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Vorname</th>
          <th>Nachname</th>
          <th>Strasse</th>
          <th>PLZ</th>
          <th>Ort</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="user in users" :key="user.id" 
            :class="{ hover: hoveredUser === user.id }" 
            @mouseover="hoveredUser = user.id" 
            @mouseleave="hoveredUser = null">
          <td>{{ user.id }}</td>
          <td>{{ user.vorname }}</td>
          <td>{{ user.nachname }}</td>
          <td>{{ user.strasse }}</td>
          <td>{{ user.plz }}</td>
          <td>{{ user.ort }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      users: [],
      hoveredUser: null // Tracks the currently hovered row
    };
  },
  mounted() {
    this.fetchUsers();
  },
  methods: {
    async fetchUsers() {
      try {
        const response = await axios.get('/api/users');
        this.users = response.data; // Assuming your API returns an array of users
      } catch (error) {
        console.error('Fehler beim Laden der Benutzerdaten:', error);
      }
    }
  }
};
</script>

<style scoped>
table {
  width: 100%;
  border-collapse: collapse;
}

th, td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: left;
}

th {
  background-color: #f2f2f2;
}

tr {
  transition: background-color 0.2s ease;
}

tr:hover {
  cursor: pointer;
}

.hover {
  background-color: #d0e6f7; /* Highlight row on hover */
}
</style>
