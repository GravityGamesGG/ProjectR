<template>
  <div id="app">
    <charaCustom v-show="$root.showCharaCustom"/>
    <dialogNPC v-show="$root.showDialogNPC" :npc="$root.npc"/>
  </div>
</template>

<script>
import charaCustom from "./components/charaCustom/charaCustom.vue"
import dialogNPC from "./components/dialogNPC/dialogNPC.vue"

export default {
  name: "app",
  components: {
    charaCustom,
    dialogNPC
  },
  data() {
    return {};
  }
};
</script>

<style>
html {
  box-sizing: border-box;
  user-select: none;
  cursor: default;
}
*,
*:before,
*:after {
  box-sizing: inherit;
  margin: 0px;
}
</style>
