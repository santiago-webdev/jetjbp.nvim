<!--
Say Hello World with Vue!
-->

<script>
export default {
  data() {
    return {
      message: 'Hello World!'
    }
  }
}
import { createApp } from 'vue'

const app = createApp({
  /* root component options */
})

import { createApp } from 'vue'
// import the root component App from a single-file component.
import App from './App.vue'
</script>

<template>
  <h1>{{ message }}</h1>
</template>
