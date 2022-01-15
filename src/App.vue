<template>
  <v-app :style="{background: $vuetify.theme.themes.dark.background}">
  <Header/>
    <v-main>
      <component
        :is="Page"
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

export default {
  name: 'App',

  components: {
    Welcome,
    Footer,
    Header,
    CreateUser
},
  data () {
    return{
      Page: 'Welcome',
    }
  },
  methods: {
    changePage(page) {
      this.Page = page;
    },
    saveStorageID(storageID) {
      console.log(storageID);
      this.storageID = storageID
    }
  }
};
</script>
