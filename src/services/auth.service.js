// src/services/auth.service.js
/*
import axios from 'axios';

const API_URL = 'http://localhost:3000/'; // Replace with your API URL

class AuthService {
  login(username, password) {
    return axios
      .post(API_URL + 'login', {
        username,
        password,
      })
      .then(response => {
        if (response.data.token) {
          localStorage.setItem('user', JSON.stringify(response.data));
        }
        return response.data;
      });
  }

  logout() {
    localStorage.removeItem('user');
  }

  register(username, email, password) {
    return axios.post(API_URL + 'register', {
      username,
      email,
      password,
    });
  }

  getCurrentUser() {
    return JSON.parse(localStorage.getItem('user'));
  }
}

export default new AuthService();
*/