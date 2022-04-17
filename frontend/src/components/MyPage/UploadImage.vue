<template>
  <div id="overlay">
    <div class="flex items-center h-screen w-full bg-teal-lighter">
      <div class="w-full bg-white rounded shadow-lg p-8 m-4">
        <div class="flex flex-col mb-4">
          <label class="mb-2 font-bold text-lg text-grey-darkest" for="icatch"
            >iCatch</label
          >
          <input
            @change="setIcatch($event)"
            class="border py-2 px-3 text-grey-darkest"
            type="file"
          />
        </div>
        <button
          @click="handleCreatePost()"
          class="
            bg-blue-500
            hover:bg-blue-700
            text-white
            font-bold
            py-2
            px-4
            uppercase
            text-lg
            mx-auto
            rounded
          "
          type="submit"
        >
          Create Post
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
</style>