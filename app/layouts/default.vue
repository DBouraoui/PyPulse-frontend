<template>
  <UMain>

    <NavbarAnonymous />

    <slot/>

    <FooterAnonymous />
  </UMain>
</template>
<script setup lang="ts">
import NavbarAnonymous from "~/components/Navbar-anonymous.vue";
import FooterAnonymous from "~/components/Footer-anonymous.vue";
</script>