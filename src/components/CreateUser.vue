<template>
  <v-container fill-height fluid>
    <v-row
      justify="center"
      class="text-center white--text"
      align-content="center"
    >
      <v-col cols="2"></v-col>
      <v-col cols="8">
        <v-row
          justify="center"
          class="text-center white--text"
          align-content="center"
        >
          <v-col>
            <h1>Enter your email</h1>
            <br />
            <v-row>
              <v-col cols="3" />
              <v-col cols="6">
                <v-text-field
                  dark
                  v-model="email"
                  label="Email"
                  :rules="emailRules"
                ></v-text-field>
              </v-col>
              <v-col cols="3" />
            </v-row>
            <p>
              We only use this to link your data to you, we won't email you
              unless you request it!
            </p>
          </v-col>
        </v-row>
        <v-row
          justify="center"
          class="text-center white--text"
          align-content="center"
        >
          <v-col cols="6">
            <v-btn
              rounded
              :color="$vuetify.theme.themes.dark.primary"
              @click="changePage('Welcome')"
            >
              Back
            </v-btn>
          </v-col>
          <v-col cols="6">
            <v-btn
              rounded
              :color="$vuetify.theme.themes.dark.primary"
              @click="changePage('Welcome')"
            >
              Submit
            </v-btn>
          </v-col>
        </v-row>
      </v-col>
      <v-col cols="2"></v-col>
    </v-row>
  </v-container>
</template>

<script>
  export default {
    data() {
      return {
        email: "",
        emailRules: [],
      };
    },
    watch: {
      email: function (mail) {
        if (mail != "") {
          this.emailRules = [(v) => v.match(/\S+@\S+\.\S+/) || "Invalid email"];
        } else {
          this.emailRules = ["Email is required"];
        }
      },
    },
    methods: {
      changePage(page) {
        this.$emit("page", page);
      },
    },
  };
</script>
