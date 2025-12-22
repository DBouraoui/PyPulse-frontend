<script setup lang="ts">
const stats = [{
  label: 'Projets réalisés',
  value: '10+',
  icon: 'i-lucide-folder-git'
}, {
  label: 'SaaS / APIs / Cloud',
  value: 'Production',
  icon: 'i-lucide-cloud'
}, {
  label: 'Open Source',
  value: 'Contributeur',
  icon: 'i-lucide-git-fork'
}]

const links = [{
  label: 'Voir mes projets',
  icon: 'i-lucide-arrow-right',
  trailing: true,
  size: 'lg' as const,
  to: '/projects'
}, {
  label: 'Lire le blog',
  icon: 'i-lucide-book-open',
  color: 'neutral' as const,
  variant: 'outline' as const,
  size: 'lg' as const,
  to: '/blog'
}]
</script>

<template>
  <UContainer>
    <div class="py-24 sm:py-32 lg:py-40">
      <div class="mx-auto max-w-4xl">
        <!-- Badge -->
        <div class="flex justify-center mb-8">
          <UBadge
              color="primary"
              variant="subtle"
              size="lg"
              class="gap-2"
          >
            <UIcon name="i-lucide-code" class="w-4 h-4" />
            <span>Disponible pour nouveaux projets</span>
          </UBadge>
        </div>

        <!-- H1 -->
        <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold tracking-tight text-center text-gray-900 dark:text-white mb-6">
          Développeur FullStack & SaaS<br />
          <span class="text-primary">Symfony, Django, DevOps</span>
        </h1>

        <!-- Sous-titre -->
        <p class="text-lg sm:text-xl text-center text-gray-600 dark:text-gray-400 mb-12 max-w-3xl mx-auto leading-relaxed">
          Je conçois des applications web robustes, performantes et maintenables, de l'API à la production.
        </p>

        <!-- Stats / Mini preuves -->
        <div class="grid grid-cols-1 sm:grid-cols-3 gap-4 mb-12">
          <UCard
              v-for="(stat, index) in stats"
              :key="index"
              :ui="{
              body: { padding: 'p-6' }
            }"
          >
            <div class="flex items-center gap-4">
              <div class="p-2.5 rounded-lg bg-primary/10 dark:bg-primary/20">
                <UIcon :name="stat.icon" class="w-5 h-5 text-primary" />
              </div>
              <div>
                <p class="text-2xl font-bold text-gray-900 dark:text-white">
                  {{ stat.value }}
                </p>
                <p class="text-sm text-gray-600 dark:text-gray-400">
                  {{ stat.label }}
                </p>
              </div>
            </div>
          </UCard>
        </div>

        <!-- CTAs -->
        <div class="flex flex-col sm:flex-row items-center justify-center gap-4">
          <UButton
              v-for="(link, index) in links"
              :key="index"
              v-bind="link"
          />
        </div>

        <!-- Tech Stack Pills -->
        <div class="mt-16 flex flex-wrap items-center justify-center gap-3">
          <UBadge
              v-for="tech in ['Symfony', 'Django', 'FastAPI', 'PostgreSQL', 'GO', 'Docker', 'AWS', 'CI/CD']"
              :key="tech"
              color="neutral"
              variant="subtle"
              size="md"
          >
            {{ tech }}
          </UBadge>
        </div>
      </div>
    </div>
  </UContainer>
</template>

<style scoped>
/* Animation subtile au hover pour les cards */
:deep(.grid > div) {
  transition: transform 0.2s ease;
}

:deep(.grid > div:hover) {
  transform: translateY(-2px);
}
</style>