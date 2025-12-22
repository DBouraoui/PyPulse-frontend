<script setup lang="ts">
const services = [{
  icon: 'i-lucide-server',
  title: 'APIs & Backends',
  description: 'Conception et développement d\'APIs REST robustes et performantes. Architecture hexagonale, tests automatisés, documentation OpenAPI.',
  technologies: ['Symfony', 'Django REST', 'FastAPI', 'PostgreSQL', 'Redis'],
  features: [
    'Architecture RESTful ou GraphQL',
    'Authentification JWT / OAuth2',
    'Rate limiting & caching',
    'Tests unitaires & d\'intégration'
  ]
}, {
  icon: 'i-lucide-layers',
  title: 'SaaS',
  description: 'Applications web multi-tenants pensées pour évoluer. Du MVP à la scale, avec une attention particulière sur l\'expérience utilisateur et la maintenabilité.',
  technologies: ['Multi-tenancy', 'Stripe', 'Webhooks', 'Background Jobs', 'Analytics'],
  features: [
    'Architecture scalable',
    'Gestion des abonnements',
    'Tableaux de bord metrics',
    'Intégrations tierces'
  ]
}, {
  icon: 'i-lucide-cloud',
  title: 'DevOps & Cloud',
  description: 'Infrastructure as Code et pipelines CI/CD pour des déploiements fiables. Monitoring, logs centralisés et stratégies de backup automatisées.',
  technologies: ['Docker', 'CI/CD', 'AWS', 'GitHub Actions', 'Terraform'],
  features: [
    'Containerisation Docker',
    'Déploiement automatisé',
    'Monitoring & alerting',
    'Backup & disaster recovery'
  ]
}]
</script>

<template>
  <UContainer>
    <div class="py-24 sm:py-32 bg-gray-50/50 dark:bg-gray-900/50">
      <!-- Titre -->
      <div class="text-center mb-16">
        <UBadge
            color="primary"
            variant="subtle"
            size="lg"
            class="mb-6"
        >
          <UIcon name="i-lucide-briefcase" class="w-4 h-4" />
          <span>Services</span>
        </UBadge>

        <h2 class="text-3xl sm:text-4xl lg:text-5xl font-bold tracking-tight text-gray-900 dark:text-white mb-6">
          Ce que je <span class="text-primary">construis</span>
        </h2>

        <p class="text-lg text-gray-600 dark:text-gray-400 max-w-2xl mx-auto">
          Des solutions techniques concrètes, de l'idée à la production
        </p>
      </div>

      <!-- Services Grid -->
      <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
        <UCard
            v-for="(service, index) in services"
            :key="index"
            :ui="{
            body: { padding: 'p-8' },
            base: 'h-full'
          }"
            class="hover:shadow-xl transition-shadow duration-300"
        >
          <!-- Icon & Title -->
          <div class="mb-6">
            <div class="inline-flex p-3 rounded-xl bg-primary/10 dark:bg-primary/20 mb-4">
              <UIcon :name="service.icon" class="w-8 h-8 text-primary" />
            </div>

            <h3 class="text-2xl font-bold text-gray-900 dark:text-white mb-3">
              {{ service.title }}
            </h3>

            <p class="text-gray-600 dark:text-gray-400 leading-relaxed">
              {{ service.description }}
            </p>
          </div>

          <!-- Technologies -->
          <div class="mb-6">
            <p class="text-sm font-medium text-gray-500 dark:text-gray-400 mb-3">
              Technologies
            </p>
            <div class="flex flex-wrap gap-2">
              <UBadge
                  v-for="tech in service.technologies"
                  :key="tech"
                  color="primary"
                  variant="subtle"
                  size="sm"
              >
                {{ tech }}
              </UBadge>
            </div>
          </div>

          <!-- Features -->
          <UDivider class="my-6" />

          <div>
            <p class="text-sm font-medium text-gray-500 dark:text-gray-400 mb-3">
              Inclus
            </p>
            <ul class="space-y-2">
              <li
                  v-for="(feature, featureIndex) in service.features"
                  :key="featureIndex"
                  class="flex items-start gap-2 text-sm text-gray-600 dark:text-gray-400"
              >
                <UIcon
                    name="i-lucide-check"
                    class="w-4 h-4 text-primary flex-shrink-0 mt-0.5"
                />
                <span>{{ feature }}</span>
              </li>
            </ul>
          </div>
        </UCard>
      </div>

      <!-- Section supplémentaire : Process -->
      <div class="mt-24">
        <div class="text-center mb-12">
          <h3 class="text-2xl sm:text-3xl font-bold text-gray-900 dark:text-white mb-4">
            De l'idée à la production
          </h3>
          <p class="text-gray-600 dark:text-gray-400">
            Un processus rodé pour livrer de la valeur rapidement
          </p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-4 gap-6">
          <UCard
              v-for="(step, index) in [
              { icon: 'i-lucide-compass', title: 'Analyse', desc: 'Compréhension du besoin et contraintes techniques' },
              { icon: 'i-lucide-pencil-ruler', title: 'Architecture', desc: 'Design de la solution et choix technologiques' },
              { icon: 'i-lucide-code', title: 'Développement', desc: 'Code propre, tests, revue de code continue' },
              { icon: 'i-lucide-rocket', title: 'Déploiement', desc: 'Mise en production et monitoring proactif' }
            ]"
              :key="index"
              :ui="{
              body: { padding: 'p-6' }
            }"
          >
            <div class="text-center">
              <div class="inline-flex p-3 rounded-lg bg-primary/10 dark:bg-primary/20 mb-4">
                <UIcon :name="step.icon" class="w-6 h-6 text-primary" />
              </div>
              <h4 class="font-semibold text-gray-900 dark:text-white mb-2">
                {{ step.title }}
              </h4>
              <p class="text-sm text-gray-600 dark:text-gray-400">
                {{ step.desc }}
              </p>
            </div>
          </UCard>
        </div>
      </div>

      <!-- CTA -->
      <div class="text-center mt-16">
        <div class="inline-flex flex-col sm:flex-row items-center gap-4">
          <UButton
              label="Voir mes projets"
              icon="i-lucide-folder-git"
              size="lg"
              to="/projects"
          />
          <UButton
              label="Télécharger mon CV"
              icon="i-lucide-download"
              color="neutral"
              variant="outline"
              size="lg"
              to="/cv.pdf"
              target="_blank"
          />
        </div>
      </div>
    </div>
  </UContainer>
</template>