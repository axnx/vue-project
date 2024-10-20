<template>
  <div>
    <h2>User Login Table</h2>
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Username</th>
          <th>Email</th>
          <th>Created At</th>
        </tr>
        </thead>
      <tbody>
      <tr v-for="user in users" :key="user.id" 
            :class="{ hover: hoveredUser === user.id }" 
            @mouseover="hoveredUser = user.id" 
            @mouseleave="hoveredUser = null">
          <td>{{ user.id }}</td>
          <td>{{ user.username }}</td>
          <td>{{ user.email }}</td>
          <td>{{ user.created_at }}</td>
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
      hoveredUser: null, // Tracks the currently hovered row
      isModalOpen: false,
      selectedUser: null // This will hold the selected user for editing
    };
  },
  created() {
    this.fetchUsers();
  },
  methods: {
    async fetchUsers() {
      const token = localStorage.getItem('token'); // Retrieve token from local storage or a state management store
      console.log(token);
      try {
        const response = await axios.get('/api/login/', {
          headers: {
            Authorization: `Bearer ${token}`, // Include the token in the Authorization header
          },
        });
        this.users = response.data; // Assuming response.data is an array of users
      } catch (error) {
        console.error('Error fetching users:', error);
        // Handle error (e.g., redirect to login if unauthorized)
        if (error.response && error.response.status === 401) {
          // Redirect or show a notification
          alert('Unauthorized! Please log in.');
          // Optionally, redirect to login route
          this.$router.push('/login');
        }
      }
    },
  },
};
</script>

<style scoped>
table {
  width: 100%;
  border-collapse: collapse;
}

th, td {
  border: 1px solid #ddd;
  padding: 2px;
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
