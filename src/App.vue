<template>
  <v-app :style="{background: $vuetify.theme.themes.dark.background}">
  <Header/>
    <v-main>
      <component :is="Page" @page="changePage($event)"></component>"
    </v-main>
    <Footer/>
  </v-app>
</template>

<script>
import Welcome from './components/Welcome';
import HelloWorld from './components/HelloWorld';
import Footer from './components/Footer';
import Header from './components/Header';

export default {
  name: 'App',

  components: {
    Welcome,
    Footer,
    Header,
    HelloWorld
},
  data () {
    return{
      Page: 'Welcome',
    }
  },
  methods: {
    changePage(page) {
      this.Page = page;
    }
  }
};
</script>
