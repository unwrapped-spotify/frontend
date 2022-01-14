<template>
  <v-app :style="{background: $vuetify.theme.themes.dark.background}">
  <Header/>
    <v-main>
      <Welcome/>
    </v-main>
    <Footer/>
  </v-app>
</template>

<script>
import Welcome from './components/Welcome';
import Footer from './components/Footer';
import Header from './components/Header';

export default {
  name: 'App',

  components: {
    Welcome,
    Footer,
    Header
  },
  data: () => ({
    //
  }),
};
</script>
