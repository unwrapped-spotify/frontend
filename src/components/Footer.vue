<template>
    <v-footer
        color="#1D382F"
        class="white--text"
    >
        This is a footer
        <v-btn
            v-for="item in items"
            :key="item"
            class="mx-4 white--text"
            :href="item.href"
            icon
        >
            <v-icon size=24>{{ item.icon }}</v-icon>
        </v-btn>
    </v-footer>
</template>

<script>
    export default {
        data: () => ({
            icons: [
                'mdi-github',
            ],
            items: [
                {
                    icon: 'mdi-github',
                    href: 'https://github.com/unwrapped-spotify'
                }
            ]
        }),
    }
</script>