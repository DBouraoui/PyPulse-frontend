<script setup lang="ts">
const problems = [{
  icon: 'i-lucide-file-question',
  title: 'Code illisible',
  description: 'Maintenance impossible, onboarding difficile, bugs récurrents'
}, {
  icon: 'i-lucide-alert-triangle',
  title: 'Dette technique',
  description: 'Ralentissements constants, coûts qui explosent, équipe frustrée'
}, {
  icon: 'i-lucide-timer',
  title: 'APIs lentes',
  description: 'Utilisateurs impatients, taux de conversion en chute, mauvaise UX'
}, {
  icon: 'i-lucide-rocket',
  title: 'Déploiements bancals',
  description: 'Stress à chaque release, rollbacks fréquents, downtime'
}]

const solutions = [{
  icon: 'i-lucide-code-2',
  title: 'Clean Code',
  description: 'Architecture claire, patterns éprouvés, documentation vivante'
}, {
  icon: 'i-lucide-zap',
  title: 'Performance',
  description: 'Optimisations SQL, caching intelligent, monitoring proactif'
}, {
  icon: 'i-lucide-shield-check',
  title: 'Fiabilité',
  description: 'Tests automatisés, CI/CD robuste, déploiements sans stress'
}, {
  icon: 'i-lucide-trending-up',
  title: 'Scalabilité',
  description: 'Architecture évolutive, pensée pour grandir avec votre produit'
}]
</script>

<template>
  <UContainer>
    <div class="py-24 sm:py-32">
      <!-- Titre principal -->
      <div class="text-center mb-16">
        <h2 class="text-3xl sm:text-4xl lg:text-5xl font-bold tracking-tight text-gray-900 dark:text-white mb-6">
          Des applications qui tiennent<br />
          <span class="text-primary">dans le temps</span>
        </h2>
        <p class="text-lg text-gray-600 dark:text-gray-400 max-w-2xl mx-auto">
          Vous reconnaissez ces problèmes ?
        </p>
      </div>

      <!-- Problèmes -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-16">
        <UCard
            v-for="(problem, index) in problems"
            :key="index"
            :ui="{
            body: { padding: 'p-6' },
            ring: 'ring-1 ring-red-200 dark:ring-red-900/30',
            background: 'bg-red-50/50 dark:bg-red-950/20'
          }"
        >
          <div class="flex gap-4">
            <div class="flex-shrink-0 mt-1">
              <div class="p-2 rounded-lg bg-red-100 dark:bg-red-900/30">
                <UIcon :name="problem.icon" class="w-5 h-5 text-red-600 dark:text-red-400" />
              </div>
            </div>
            <div>
              <h3 class="text-lg font-semibold text-gray-900 dark:text-white mb-2">
                {{ problem.title }}
              </h3>
              <p class="text-gray-600 dark:text-gray-400">
                {{ problem.description }}
              </p>
            </div>
          </div>
        </UCard>
      </div>

      <!-- Transition -->
      <div class="relative mb-16">
        <div class="absolute inset-0 flex items-center" aria-hidden="true">
          <div class="w-full border-t border-gray-200 dark:border-gray-800"></div>
        </div>
        <div class="relative flex justify-center">
          <div class=" px-6 py-3 ">
          </div>
        </div>
      </div>

      <!-- Solution globale -->
      <div class="text-center mb-12">
        <div class="inline-flex items-center gap-3 px-6 py-3 rounded-full bg-primary/10 dark:bg-primary/20 mb-8">
          <UIcon name="i-lucide-lightbulb" class="w-5 h-5 text-primary" />
          <span class="text-lg font-medium text-primary">
            Mon approche
          </span>
        </div>
        <p class="text-xl sm:text-2xl font-semibold text-gray-900 dark:text-white max-w-3xl mx-auto leading-relaxed">
          J'apporte une approche <span class="text-primary">pragmatique</span>,
          orientée <span class="text-primary">produit</span> et <span class="text-primary">long terme</span>.
        </p>
      </div>

      <!-- Solutions -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
        <UCard
            v-for="(solution, index) in solutions"
            :key="index"
            :ui="{
            body: { padding: 'p-6' },
            ring: 'ring-1 ring-primary/20 dark:ring-primary/30',
            background: 'bg-primary/5 dark:bg-primary/10'
          }"
        >
          <div class="flex gap-4">
            <div class="flex-shrink-0 mt-1">
              <div class="p-2 rounded-lg bg-primary/20 dark:bg-primary/30">
                <UIcon :name="solution.icon" class="w-5 h-5 text-primary" />
              </div>
            </div>
            <div>
              <h3 class="text-lg font-semibold text-gray-900 dark:text-white mb-2">
                {{ solution.title }}
              </h3>
              <p class="text-gray-600 dark:text-gray-400">
                {{ solution.description }}
              </p>
            </div>
          </div>
        </UCard>
      </div>

      <!-- CTA final -->
      <div class="text-center mt-12">
        <UButton
            label="Discutons de votre projet"
            icon="i-lucide-message-circle"
            size="lg"
            to="/contact"
        />
      </div>
    </div>
  </UContainer>
</template>