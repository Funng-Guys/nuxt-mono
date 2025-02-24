<script lang="ts" setup>

const showMic = ref(false);

const toggleMic = () => {
  showMic.value = !showMic.value;
}

</script>

<template>
  <UContainer>
    <UCard class="mt-10">
      <template #header>
        <div class="flex justify-between">
          <h1>Welcome to Nuxt UI Starter</h1>
          <ColorScheme><USelect v-model="$colorMode.preference" :options="['system', 'light', 'dark']" /></ColorScheme>
        </div>
      </template>
      <UButton icon="i-heroicons-book-open" class="transition-all" @click="toggleMic">MIC</UButton>
    </UCard>

    <UCard v-if="showMic" class="mt-10">
      <template #header>
        <h1>Friendship ended with US MIC</h1>
      </template>
    <video autoplay loop class="w-full">
      <source src="https://cdn.discordapp.com/attachments/344232026322370560/1343334579410440222/ek70pspg1oke1.mp4?ex=67bce551&is=67bb93d1&hm=e227498c13d337ebbc623e54c8e21ea9df159d2e93ee159ba1488d8574febc4e&" type="video/mp4" />
    </video>
    </UCard>

    <p>Test code to se if this autoupdates.</p>
  </UContainer>
</template>