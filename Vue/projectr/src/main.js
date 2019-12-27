import Vue from 'vue'
import App from './App.vue'

Vue.config.productionTip = false

let data = {
  renderCharaCustom: false,
  renderDialogNPC: (window.ue) ? false : true,
  npc: {
    name: "test",
    dialogText: "lol"
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
    showDialogNPC(npcName, npcdialogText){
      if(!npcName) return this.renderDialogNPC = false
      this.renderDialogNPC = true
      this.npc.name = npcName
      this.npc.dialogText = npcdialogText
    }
  },
  render: h => h(App),
})
