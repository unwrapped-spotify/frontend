<template>
    <v-footer
        :color="$vuetify.theme.themes.dark.accent"
        class="white--text"
        fixed
    >
        <v-row>
            <v-col>
                <v-card-text class="text-left">
                    <v-btn
                        class="mx-4 white--text text-right"
                        href="https://github.com/unwrapped-spotify"
                        icon
                    >
                        <v-icon size=24>mdi-coffee</v-icon>
                    </v-btn>
                    Buy us a coffee!
                </v-card-text>
            </v-col>
            <v-col>
                <v-card-text class="mx-4 white--text text-center">
                    Unwrapped Spotify
                </v-card-text>
            </v-col>
            <v-col>
                <v-card-text class="text-right">
                    Check out the source code!
                    <v-btn
                        class="mx-4 white--text text-right"
                        href="https://github.com/unwrapped-spotify"
                        icon
                    >
                        <v-icon size=24>mdi-github</v-icon>
                    </v-btn>
                </v-card-text>
            </v-col>
        </v-row>
    </v-footer>
</template>