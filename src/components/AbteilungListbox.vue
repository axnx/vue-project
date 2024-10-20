<script setup>

const props = defineProps({
  msg: String
})

import { ref, onMounted } from 'vue'
import axios from 'axios'

// Reactive variables
const departments = ref([])    // To store the department data
const loading = ref(true)      // To track loading state
const error = ref(null)        // To track errors
const selectedDepartment = ref(null) // To store the selected department

// Function to fetch departments
const fetchDepartments = async () => {
  loading.value = true; // Set loading state to true before fetching
  try {
    const response = await axios.get('/api/department') // Replace with your API endpoint
    departments.value = response.data // Assign fetched data to the departments array
  } catch (err) {
    error.value = err.message // Capture any error that occurs
  } finally {
    loading.value = false // Set loading to false after request completes
  }
}

// Fetch departments when the component mounts
onMounted(fetchDepartments)

// Method to handle department selection change
const handleDepartmentChange = () => {
  console.log('Selected Department:', selectedDepartment.value); // Handle the selected department
}

</script>
<!----------------------------------------------------------------------------->
<template>
  <div>
  <h1>Abteilung</h1>
  <p>{{ msg }}</p>

  <div class="department-list">
    <h1>Abteilungen</h1>
    
    <select v-model="selectedDepartment" @change="handleDepartmentChange">
      <option disabled value="">Bitte wählen Sie eine Abteilung</option> <!-- Placeholder option -->
      <option v-for="department in departments" :key="department.department_id" :value="department">
        {{ department.name }} <!-- Display department name -->
      </option>
    </select>

    <div v-if="selectedDepartment">
      <h2>Details für: {{ selectedDepartment.name }}</h2>
      <p>{{ selectedDepartment.description }}</p>
    </div>

    <p v-if="loading">Lade Abteilungen...</p>
    <p v-if="error" class="error">Fehler beim Abrufen der Abteilungen: {{ error }}</p>
   
  </div>

    </div>
</template>
<!----------------------------------------------------------------------------->
<style>
label, input, select {
  display: block;
  margin-bottom: 10px;
}
.error {
  color: red;
}
</style>
