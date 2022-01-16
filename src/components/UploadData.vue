<template>
  <v-container fill-height fluid>
    <v-row
      justify="center"
      class="text-center white--text"
      align-content="center"
    >
      <v-col cols="2"></v-col>
      <v-col cols="8">
        <h1>Upload your data</h1>
        <p>
          Spotify will have sent you a zip file containing the data you
          requested. Within the zip file, navigate into the MyData folder. This
          folder contains several files. You need to upload the files
          <code>
            StreamingHistory0.json, StreamingHistory1.json,
            StreamingHistory2.json, StreamingHistory3.json</code
          >
        </p>
        <v-row>
          <v-col cols="2"></v-col>
          <v-col cols="8">
            <v-file-input
              dark
              multiple
              truncate-length="30"
              chips
              show-size
              rounded
              outlined
              accept="application/json"
              @change="onFileChange"
            >
            </v-file-input>
          </v-col>
          <v-col cols="2"></v-col>
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
              @click="uploadData()"
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
  //import { axios } from "vue/types/umd";

  export default {
    name: "UploadData",
    components: {},
    props: ["storageID"],
    data() {
      return {
        streamingData: [],
      };
    },
    methods: {
      onFileChange(files) {
        this.files = files;
      },
      changePage(page) {
        this.$emit("page", page);
      },
      uploadData() {
        let formData = new FormData();

        formData.append("file", this.files[0]);
        formData.append("file", this.files[1]);
        this.axios
          .post(
            process.env.VUE_APP_BACKEND_URL +
              "/api/v1/streaming-history/" +
              this.storageID +
              "/data",
            formData,
            {
              headers: {
                "Content-Type": "multipart/form-data",
              },
            }
          )
          .then(() => {
            console.log("sent");
          });
        //console.log(this.storageID)
      },
    },
  };
</script>
