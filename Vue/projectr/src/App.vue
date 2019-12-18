<template>
  <div id="app">
    <charaCustom v-show="showCharaCustom"></charaCustom>
    <div>yolo yolo yolo</div>
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
    return{
      showCharaCustom: true
    }
  }
}
</script>

<style>
html {
    box-sizing: border-box;
}
*, *:before, *:after {
    box-sizing: inherit;
    margin: 0px;
}
</style>
