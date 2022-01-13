<template>
    <v-footer
        color="#1D382F"
        class="white--text"
    >
        This is a footer
        <v-btn
            v-for="icon in icons"
            :key="icon"
            class="mx-4 white--text"
            icon
        >
            <v-icon size=24>{{ icon }}</v-icon>
        </v-btn>
    </v-footer>
</template>

<script>
    export default {
        data: () => ({
            icons: [
                'mdi-github',
            ],
        }),
    }
</script>