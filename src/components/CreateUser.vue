<template>
  <v-container fill-height fluid>
    <v-row
      justify="center"
      class="text-center white--text"
      align-content="center"
    >
      <v-col cols="2"></v-col>
      <v-col cols="8">
        <h1>Enter your email</h1>
        <v-text-field
          dark
          v-model="email"
          label="Email"
          :rules="emailRules"
        ></v-text-field>
        <p>
          We only use this to link your data to you, we won't email you unless
          you request it!
        </p>
      </v-col>
      <v-col cols="2"></v-col>
    </v-row>
  </v-container>
</template>

<script>
  export default{
    data() {
      return{
        email: '',
        emailRules: []
      }
    },
    watch: {
      email: function(mail) {
        if (mail != '') {
        this.emailRules = [v => (v.match(/\S+@\S+\.\S+/)) || 'Invalid email']
      } else {
        this.emailRules = ['Email is required']
      }

      }
    }
  }
</script>
