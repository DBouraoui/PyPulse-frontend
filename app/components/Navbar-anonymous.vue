<script setup lang="ts">
import type { NavigationMenuItem } from '@nuxt/ui'

const route = useRoute()

const items = computed<NavigationMenuItem[]>(() => [{
  label: 'Mes projets',
  to: '/projects',
  icon: 'i-lucide-book-open',
  active: route.path.startsWith('/projects')
}, {
  label: 'Le blog',
  to: '/blogs',
  icon: 'i-lucide-box',
  active: route.path.startsWith('/blogs')
},
  {
    label: 'Me contacter',
    to: '/contact',
    icon: 'i-lucide-mail',
    active: route.path.startsWith('/contact')
  },
  {
    label: 'Connexion',
    to: '/login',
    icon: 'i-lucide-user',
    active: route.path.startsWith('/login')
  }
])
</script>

<template>
  <UHeader mode="slideover">
    <template #title>
      <h2>Pypulse</h2>
    </template>

    <UNavigationMenu :items="items" />

    <template #right>
      <UColorModeButton />

      <UTooltip text="Open on GitHub" :kbds="['meta', 'G']">
        <UButton
            color="neutral"
            variant="ghost"
            to="https://github.com/nuxt/ui"
            target="_blank"
            icon="i-simple-icons-github"
            aria-label="GitHub"
        />
      </UTooltip>
    </template>

    <template #body>
       <h2 class="pb-2">Menu principal</h2>
       <UNavigationMenu orientation="vertical" :items="items" />
    </template>
  </UHeader>
</template>

