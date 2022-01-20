<template>
  <v-container fill-height fluid>
    <v-row
      justify="center"
      class="text-center white--text"
      align-content="center"
    >
      <v-col cols="2"></v-col>
      <v-col cols="8">
        <h1>Download your report</h1>
        <br />
        <p>{{ this.status }}</p>
        <v-btn
          rounded
          :disabled="this.ready"
          :color="$vuetify.theme.themes.dark.primary"
          :href="this.downloadLink" 
        >
          Download
        </v-btn>
      </v-col>
      <v-col cols="2"></v-col>
    </v-row>
  </v-container>
</template>

<script>
  export default {
    props: ["buildID", "storageID"],
    data() {
      return {
        downloadLink: "",
        status: "",
        ready: true,
      };
    },
    methods: {
      printBuildID() {
        console.log(this.buildID);
      },
      getStatus: function () {
        this.axios
          .get(
            process.env.VUE_APP_BACKEND_URL +
              "/api/v1/report/" +
              this.storageID +
              "/status?buildID=" +
              this.buildID
          )
          .then((response) => {
            this.status = response.data.status;
            if (response.data.status == "SUCCESS") {
              this.ready = false;
              this.status = "Your report is ready to download!";
              this.downloadLink =
                process.env.VUE_APP_BACKEND_URL +
                "/api/v1/report/" +
                this.storageID +
                "/download.html";
            } else {
              if (response.data.status == "FAILED") {
                this.status =
                  "Your report failed to generate. Please try again.";
              } else {
                this.status = "Your report is being generated. Please wait.";
              }
              setTimeout(this.getStatus, 1000);
            }
          });
      },
    },
    mounted: function () {
      this.getStatus();
      //var getStatusPoll = function() {
      //  this.getStatus;
      //  setTimeout(getStatusPoll, 1000);
      //};
      //setTimeout(this.getStatus, 1000);
    },
  };
</script>
