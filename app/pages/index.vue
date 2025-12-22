<template>
 <UContainer>
   <HeroSection/>
   <SolutionSection />
   <ActionSection />
   <StackSection />
 </UContainer>
</template>
<script setup lang="ts">
import HeroSection from "~/sections/landing/Hero-section.vue";
import SolutionSection from "~/sections/landing/Solution-section.vue";
import ActionSection from "~/sections/landing/Action-section.vue";
import StackSection from "~/sections/landing/Stack-section.vue";
</script>