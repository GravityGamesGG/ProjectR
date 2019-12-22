import Vue from 'vue'
import App from './App.vue'

Vue.config.productionTip = false

let data = {
  showCharaCustom: (window.ue) ? false : true
}

// eslint-disable-next-line
window.vm = new Vue({
  el: "#app",
  data: data,
  render: h => h(App),
})
