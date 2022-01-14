<template>
  <v-container fill-height fluid>
    <v-col>
      <v-row
        justify="center"
        class="text-center white--text"
        align-content="center"
      >
        <v-col cols="2"></v-col>
        <v-col justify="center">
          <h1 class="display-2 font-weight-bold mb-3">
            Welcome to Unwrapped Spotify!
          </h1>
          <p></p>
        </v-col>
        <v-col cols="2"></v-col>
      </v-row>
      <v-row
        justify="center"
        class="text-center white--text"
        align-content="center"
      >
        <v-col cols="2"></v-col>
        <v-col cols="4">
          <p>
            This website provides data tools to assist your Spotify listening
            experience. Currently, it is a work in progress.
          </p>
          <p>
            Currently, you can upload your Spotify data and produce a detailed
            analysis of your listening habits. This allows you to dig deeper
            into your listening than Spotify Wrapped allows.
          </p>
          <p>
            In the future, you will be able to link your Spotify account to us
            and we will notify you when your liked artists release a new album.
          </p>
        </v-col>
        <v-col cols="4">
          <v-img src="../assets/report_example.png"></v-img>
        </v-col>
        <v-col cols="2"></v-col>
      </v-row>
            <v-row
        justify="center"
        class="text-center white--text"
        align-content="center"
      >
        <v-col cols="2"></v-col>
        <v-col cols="8">
          <v-btn
          rounded
          :color="$vuetify.theme.themes.dark.primary"
          @click="changePage()"
          >
            Get started!
          </v-btn>
        </v-col>
        <v-col cols="2"></v-col>
      </v-row>

    </v-col>
  </v-container>
</template>

<script>
export default {
methods: {
  changePage() {
    this.$emit('page', 'HelloWorld');
  },
},
}
</script>