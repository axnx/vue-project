<script setup>
// Define props directly using defineProps in the <script setup> block
const props = defineProps({
  msg: String
})

import { ref, onMounted } from 'vue'
import axios from 'axios'

// Reactive variables
const departments = ref([])    // To store the department data
const loading = ref(true)      // To track loading state
const error = ref(null)        // To track errors

// Function to fetch departments
const fetchDepartments = async () => {
  try {
    const response = await axios.get('/api/department') 
    departments.value = response.data 
  } catch (err) {
    error.value = err.message 
  } finally {
    loading.value = false
  }
}

onMounted(fetchDepartments)

</script>
<!----------------------------------------------------------------------------->
<template>
  <div>
  <h1>Abteilung</h1>
  <p>{{ msg }}</p>

  <div class="department-list">
    <h1>Abteilungen</h1>
    <ul>
      <li v-for="department in departments" :key="department.department_id">
        <h2>{{ department.name }}</h2>
        <p>{{ department.description }}</p>
      </li>
    </ul>
    <p v-if="loading">Loading departments...</p>
    <p v-if="error" class="error">Error fetching departments: {{ error }}</p>
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
