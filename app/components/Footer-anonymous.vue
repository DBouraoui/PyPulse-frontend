<script setup lang="ts">
const footerLinks = [
  {
    label: 'Produit',
    children: [
      { label: 'Fonctionnalités', to: '#' },
      { label: 'Playground', to: 'https://stackblitz.com/edit/nuxt-ui', target: '_blank' },
      { label: 'Releases', to: 'https://github.com/nuxt/ui/releases', target: '_blank' }
    ]
  },
  {
    label: 'Communauté',
    children: [
      { label: 'Discord', to: 'https://go.nuxt.com/discord', target: '_blank' },
      { label: 'X / Twitter', to: 'https://go.nuxt.com/x', target: '_blank' },
      { label: 'GitHub', to: 'https://github.com/nuxt/nuxt', target: '_blank' }
    ]
  },
  {
    label: 'Légal',
    children: [
      { label: 'Confidentialité', to: '#' },
      { label: 'Conditions d\'utilisation', to: '#' }
    ]
  }
]
</script>

<template>
  <UFooter class="border-t border-gray-200 dark:border-gray-800 py-12 px-4">
    <template #top>
      <div class="grid grid-cols-1 md:grid-cols-12 gap-8 mb-10">

        <div class="md:col-span-4 lg:col-span-5">
          <div class="flex items-center gap-2 mb-4">
            <UIcon name="i-heroicons-bolt" class="w-8 h-8 text-primary" />
            <span class="text-xl font-bold text-gray-900 dark:text-white uppercase tracking-wider">
              PyPulse
            </span>
          </div>
          <p class="text-sm text-gray-500 dark:text-gray-400 max-w-sm leading-relaxed">
            La solution moderne pour gérer vos projets avec Nuxt 4 et Nuxt UI.
            Simplifiez votre workflow et gagnez en productivité dès aujourd'hui.
          </p>
        </div>

        <div class="md:col-span-8 lg:col-span-7 grid grid-cols-2 sm:grid-cols-3 gap-8">
          <div v-for="group in footerLinks" :key="group.label">
            <h3 class="text-sm font-semibold text-gray-900 dark:text-white mb-4">
              {{ group.label }}
            </h3>
            <ul class="space-y-3">
              <li v-for="link in group.children" :key="link.label">
                <NuxtLink
                    :to="link.to"
                    :target="link.target"
                    class="text-sm text-gray-500 dark:text-gray-400 hover:text-primary transition-colors"
                >
                  {{ link.label }}
                </NuxtLink>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </template>

    <template #left>
      <p class="text-xs text-gray-500">
        © {{ new Date().getFullYear() }} PyPulse Inc. Tous droits réservés.
      </p>
    </template>

    <template #right>
      <div class="flex items-center gap-x-3">
        <UButton
            icon="i-simple-icons-x"
            color="neutral"
            variant="ghost"
            to="#"
            aria-label="X"
        />
        <UButton
            icon="i-simple-icons-github"
            color="neutral"
            variant="ghost"
            to="#"
            aria-label="GitHub"
        />
      </div>
    </template>
  </UFooter>
</template>