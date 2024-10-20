<template>
    <div>
      <h1>Version History</h1>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Version</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="version in versions" :key="version.id">
            <td>{{ version.id }}</td>
            <td>{{ version.version }}</td>
          </tr>
        </tbody>
      </table>
      <p v-if="error">{{ error }}</p>
    </div>
  </template>
  
  <script>
import { ref, onMounted } from 'vue';
import axios from 'axios'; // Import Axios

export default {
  name: 'VersionHistory',
  setup() {
    const versions = ref([]);
    const error = ref(null);

    const fetchVersions = async () => {
      try {
        const response = await axios.get('/api/version'); // Use Axios to make the GET request
        versions.value = response.data; // Set versions to the response data
      } catch (err) {
        error.value = err.message; // Handle any errors that occur during the request
      }
    };

    onMounted(() => {
      fetchVersions(); // Call fetchVersions when the component is mounted
    });

    return {
      versions,
      error
    };
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
  </style>
  