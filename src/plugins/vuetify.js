import Vue from 'vue';
import Vuetify from 'vuetify/lib/framework';

Vue.use(Vuetify);

export default new Vuetify({
    theme: {
        themes: {
            dark: {
            primary: "#1DB954",
            secondary: "#40C8B1",
            accent: "#1F7062",
            //error:
            //info:
            //success:
            //warning:
            background: "#191414",
            },
        },
    },
});

//"#1DB954", "#1F7062", "#1D382F", "#B3E251", "#40C8B1", "#FFFFFF", "#191414"