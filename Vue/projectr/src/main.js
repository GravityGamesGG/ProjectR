import Vue from 'vue'
import App from './App.vue'

Vue.config.productionTip = false

let data = {
  showCharaCustom: false,
  showDialogNPC: false,
  npc: {
    name: null,
    dialogText: null
  }
}

// eslint-disable-next-line
window.vm = new Vue({
  el: "#app",
  data: data,
  methods:{
    showCharaCustom(b){
      this.renderCharaCustom = b
    },
    setupDialogNPC(npcName, npcdialogText){
      this.npc.name = npcName
      this.npc.dialogText = npcdialogText
    }
  },
  render: h => h(App),
})
