<template>
  <v-container>
    <div class="text-center white--text">{{ this.status }}</div>
    <div class="text-center white--text">{{ this.downloadLink }}</div>
  </v-container>
</template>

<script>
  export default {
    props: ["buildID", "storageID"],
    data() {
      return {
        downloadLink: "",
        status: "",
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
            console.log(response.data.status);
            console.log(response.data.url)
            if (response.data.status == "SUCCESS") {
              console.log("Success")
              // get download link
            } else {
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
