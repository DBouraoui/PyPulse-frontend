<script setup lang="ts">
import * as z from 'zod'
import type { FormSubmitEvent } from '@nuxt/ui'
import {useAuth} from "~/hooks/useAuth";

const schema = z.object({
  username: z.string('Nom de compte invalide'),
  password: z.string('Le mot de passe est requis').min(8, 'Le mot de passe doit être >= 8 caractères'),
})

type Schema = z.output<typeof schema>

const state = reactive<Partial<Schema>>({
  username: undefined,
  password: undefined
})

const toast = useToast()
const { login } = useAuth()

async function onSubmit(event: FormSubmitEvent<Schema>) {
  try {
    await login(event.data)
    toast.add({ title: 'Connexion réussie', color: 'success' })
    navigateTo('/dashboard')
  } catch {
    toast.add({ title: 'Erreur de connexion', color: 'error' })
  }
}

</script>

<template>
  <section class="min-h-svh w-full flex items-center justify-center p-4 ">

    <div class="w-full max-w-md">
      <div class="mb-10 text-center">
        <h1 class="text-3xl font-bold tracking-tight text-gray-900 dark:text-white">
          Bienvenue
        </h1>
        <p class="mt-2 text-sm text-gray-500 dark:text-gray-400">
          Entrez vos identifiants pour accéder à votre espace
        </p>
      </div>

      <UForm :schema="schema" :state="state" class="space-y-6" @submit="onSubmit">

        <UFormField label="Nom de compte" name="username" size="xl">
          <UInput
              v-model="state.username"
              class="w-full"
              placeholder="nom de compte"
              icon="i-heroicons-envelope"
              variant="subtle"
          />
        </UFormField>

        <UFormField label="Mot de passe" name="password" size="xl">
          <UInput
              v-model="state.password"
              type="password"
              class="w-full"
              icon="i-heroicons-lock-closed"
              variant="subtle"
          />
        </UFormField>

        <div class="pt-2">
          <UButton
              type="submit"
              size="xl"
              block
              class="font-bold shadow-sm"
          >
            Se connecter
          </UButton>
        </div>
      </UForm>
    </div>

  </section>
</template>
