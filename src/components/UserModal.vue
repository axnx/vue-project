<template>
    <div v-if="isOpen" class="modal-overlay">
      <div class="modal-content">
        <h2>Edit User</h2>
        <form @submit.prevent="submitData">
          <label for="vorname">Vorname:
            <input id="vorname" v-model="formData.vorname" required>
          </label>
          <label for="nachname">Nachname:
            <input id="nachname" v-model="formData.nachname" required>
          </label>
          <label for="strasse">Strasse:
            <input id="strasse" v-model="formData.strasse" required>
          </label>
          <label for="plz">PLZ:
            <input id="plz" v-model="formData.plz" required>
          </label>
          <label for="ort">Ort:
            <input id="ort" v-model="formData.ort" required>
          </label>
          <input type="submit" value="Update">
          <button @click.prevent="close">Cancel</button>
        </form>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      isOpen: Boolean,
      user: Object,
    },
    data() {
      return {
        formData: { ...this.user }, // Copy user data for editing
      };
    },
    watch: {
      user(newUser) {
        this.formData = { ...newUser }; // Update form data when user changes
      },
    },
    methods: {
      async submitData() {
        try {
          await this.$axios.put(`/api/users/${this.user.id}`, this.formData); // Update user on the server
          this.$emit('refresh'); // Emit event to refresh the user list
          this.close();
        } catch (error) {
          console.error('Error updating user:', error);
        }
      },
      close() {
        this.$emit('close'); // Emit event to close the modal
      },
    },
  };
  </script>
  
  <style scoped>
  .modal-overlay {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.5);
    display: flex;
    align-items: center;
    justify-content: center;
  }
  .modal-content {
    background: white;
    padding: 20px;
    border-radius: 5px;
  }
  </style>
  