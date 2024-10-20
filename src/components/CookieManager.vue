<template>
    <div>
        <h1>Cookie Manager</h1>
        <input v-model="cookieName" placeholder="Cookie Name" />
        <input v-model="cookieValue" placeholder="Cookie Value" />
        <input v-model="cookieDays" type="number" placeholder="Days to Expire" />
        <button @click="setCookie">Set Cookie</button>
        <button @click="getCookie">Get Cookie</button>
        <button @click="deleteCookie">Delete Cookie</button>
        
        <p v-if="retrievedCookie">Retrieved Cookie: {{ retrievedCookie }}</p>
    </div>
</template>

<script>
import Cookies from 'js-cookie';

export default {
    data() {
        return {
            cookieName: '',
            cookieValue: '',
            cookieDays: '',
            retrievedCookie: '',
        };
    },
    methods: {
        setCookie() {
            const days = this.cookieDays ? parseInt(this.cookieDays) : 1; // Default to 1 day
            Cookies.set(this.cookieName, this.cookieValue, { expires: days });
            alert(`Cookie "${this.cookieName}" set!`);
        },
        getCookie() {
            this.retrievedCookie = Cookies.get(this.cookieName) || 'Cookie not found';
        },
        deleteCookie() {
            Cookies.remove(this.cookieName);
            alert(`Cookie "${this.cookieName}" deleted!`);
            this.retrievedCookie = ''; // Clear retrieved cookie
        },
    },
};
</script>

<style>
/* Add any necessary styling here */
input {
    margin: 5px;
}
button {
    margin: 5px;
}
</style>
