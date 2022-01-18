<template>
  <v-app :style="{background: $vuetify.theme.themes.dark.background}">
  <Header/>
    <v-main>
      <component
        :is="Page"
        :storageID="storageID"
        :buildID="buildID"
        @page="changePage($event)"
        @storageID="saveStorageID($event)"
        @buildID="saveBuildID($event)"
      ></component>"
    </v-main>
    <Footer/>
  </v-app>
</template>

<script>
import Welcome from './components/Welcome';
import Footer from './components/Footer';
import Header from './components/Header';
import CreateUser from './components/CreateUser';
import UploadData from './components/UploadData';
import DownloadReport from './components/DownloadReport';

export default {
  name: 'App',

  components: {
    Welcome,
    Footer,
    Header,
    CreateUser,
    UploadData,
    DownloadReport
},
  data () {
    return{
      Page: 'Welcome',
      storageID: '',
      buildID: ''
    }
  },
  methods: {
    changePage(page) {
      this.Page = page;
    },
    saveStorageID(storageID) {
      this.storageID = storageID
    },
    saveBuildID(buildID) {
      console.log(buildID)
      this.buildID = buildID
    }
  }
};
</script>
