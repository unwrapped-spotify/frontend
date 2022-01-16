<template>
  <v-app :style="{background: $vuetify.theme.themes.dark.background}">
  <Header/>
    <v-main>
      <component
        :is="Page"
        :storageID="storageID"
        @page="changePage($event)"
        @storageID="saveStorageID($event)"></component>"
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

export default {
  name: 'App',

  components: {
    Welcome,
    Footer,
    Header,
    CreateUser,
    UploadData
},
  data () {
    return{
      Page: 'Welcome',
      storageID: ''
    }
  },
  methods: {
    changePage(page) {
      this.Page = page;
    },
    saveStorageID(storageID) {
      this.storageID = storageID
    }
  }
};
</script>
