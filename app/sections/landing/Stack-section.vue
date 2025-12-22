<script setup lang="ts">
const techCategories = [{
  category: 'Backend',
  icon: 'i-lucide-server',
  color: 'blue',
  technologies: [
    { name: 'Symfony', icon: 'i-simple-icons-symfony', description: 'Framework PHP robuste pour applications enterprise' },
    { name: 'Django', icon: 'i-simple-icons-django', description: 'Python web framework avec batteries incluses' },
    { name: 'FastAPI', icon: 'i-simple-icons-fastapi', description: 'API moderne et performante en Python' }
  ]
}, {
  category: 'Frontend',
  icon: 'i-lucide-layout',
  color: 'green',
  technologies: [
    { name: 'Nuxt', icon: 'i-simple-icons-nuxtdotjs', description: 'Framework Vue.js pour applications full-stack' },
    { name: 'Vue.js', icon: 'i-simple-icons-vuedotjs', description: 'Framework progressif pour interfaces modernes' },
    { name: 'TailwindCSS', icon: 'i-simple-icons-tailwindcss', description: 'Utility-first CSS framework' }
  ]
}, {
  category: 'Databases',
  icon: 'i-lucide-database',
  color: 'purple',
  technologies: [
    { name: 'PostgreSQL', icon: 'i-simple-icons-postgresql', description: 'Base de données relationnelle puissante' },
    { name: 'Redis', icon: 'i-simple-icons-redis', description: 'Cache in-memory et message broker' },
    { name: 'MySQL', icon: 'i-simple-icons-mongodb', description: 'Base de données relationnelle' },
  ]
}, {
  category: 'DevOps',
  icon: 'i-lucide-cloud',
  color: 'orange',
  technologies: [
    { name: 'Docker', icon: 'i-simple-icons-docker', description: 'Containerisation et isolation des applications' },
    { name: 'GitHub Actions', icon: 'i-simple-icons-githubactions', description: 'CI/CD natif et automatisation' },
    { name: 'AWS', icon: 'i-simple-icons-amazonaws', description: 'Cloud infrastructure et services managés' }
  ]
}]

const principles = [
  { icon: 'i-lucide-minimize', title: 'Simplicité', description: 'Code lisible qui fait exactement ce qu\'il doit faire' },
  { icon: 'i-lucide-zap', title: 'Performance', description: 'Optimisations mesurées, pas de sur-engineering' },
  { icon: 'i-lucide-shield-check', title: 'Fiabilité', description: 'Tests, monitoring et gestion d\'erreurs robuste' },
  { icon: 'i-lucide-users', title: 'Maintenabilité', description: 'Pensé pour être repris et évoluer facilement' }
]
</script>

<template>
  <UContainer>
    <div class="py-24 sm:py-32">
      <!-- Header -->
      <div class="text-center mb-16">
        <UBadge
            color="primary"
            variant="subtle"
            size="lg"
            class="mb-6"
        >
          <UIcon name="i-lucide-cpu" class="w-4 h-4" />
          <span>Technologies</span>
        </UBadge>

        <h2 class="text-3xl sm:text-4xl lg:text-5xl font-bold tracking-tight text-gray-900 dark:text-white mb-6">
          Une stack <span class="text-primary">moderne et éprouvée</span>
        </h2>

        <p class="text-lg text-gray-600 dark:text-gray-400 max-w-2xl mx-auto">
          Des technologies que je maîtrise pour construire des solutions fiables
        </p>
      </div>

      <!-- Tech Categories -->
      <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-20">
        <UCard
            v-for="(category, index) in techCategories"
            :key="index"
            :ui="{
            body: { padding: 'p-8' }
          }"
        >
          <!-- Category Header -->
          <div class="flex items-center gap-3 mb-6">
            <div class="p-2 rounded-lg bg-primary/10 dark:bg-primary/20">
              <UIcon :name="category.icon" class="w-6 h-6 text-primary" />
            </div>
            <h3 class="text-xl font-bold text-gray-900 dark:text-white">
              {{ category.category }}
            </h3>
          </div>

          <!-- Technologies -->
          <div class="space-y-4">
            <div
                v-for="(tech, techIndex) in category.technologies"
                :key="techIndex"
                class="flex items-start gap-4 p-4 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-900/50 transition-colors duration-200"
            >
              <div class="flex-shrink-0 mt-1">
                <UIcon :name="tech.icon" class="w-6 h-6 text-gray-700 dark:text-gray-300" />
              </div>
              <div class="flex-1">
                <p class="font-semibold text-gray-900 dark:text-white mb-1">
                  {{ tech.name }}
                </p>
                <p class="text-sm text-gray-600 dark:text-gray-400">
                  {{ tech.description }}
                </p>
              </div>
            </div>
          </div>
        </UCard>
      </div>
    </div>
  </UContainer>
</template>