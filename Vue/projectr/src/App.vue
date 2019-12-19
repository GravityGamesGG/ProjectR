<template>
  <div id="app">
    <charaCustom v-show="$root.showCharaCustom"></charaCustom>
  </div>
</template>

<script>
import charaCustom from './components/charaCustom.vue'

export default {
  name: 'app',
  components: {
    charaCustom
  },
  data(){
    return{}
  }
}
</script>

<style>
html {
    box-sizing: border-box;
    user-select: none;
    cursor: default;
}
*, *:before, *:after {
    box-sizing: inherit;
    margin: 0px;
}
</style>
