<template>
  <div class="charaCustomContainer">
    <categorie :key="cat.name" v-for="cat in customData" :catName="cat.name" :catData="cat.data" @onItemClicked="itemClicked"/>
  </div>
</template>

<script>
//Import des composants
import categorie from "./categorie";

//Import des data pour chaque partie du corp
import corpData from "./data/corp";
import cheveuxData from "./data/cheveux";
import accessoireData from "./data/accessoire";
import torseUpData from "./data/torseUp";
import torseDownData from "./data/torseDown";
import jambeData from "./data/jambe";
import chaussureData from "./data/pied";

let customData = [
  corpData,
  cheveuxData,
  accessoireData,
  torseUpData,
  torseDownData,
  jambeData,
  chaussureData
]

export default {
  name: "charaCustom",
  components: {
    categorie
  },
  props: {},
  data() {
    return {
      customData,
      slots:[
        null,
        null,
        null,
        null,
        null,
        null,
        null
      ]
    }
  },
  methods:{
    itemClicked(el){
      this.slots.forEach(slot => {
        if(slot == null) return
        if(slot.occupationSlot.includes(el.slot) || el.occupationSlot.includes(slot.slot)){
          if(slot.slot == 6){
            slot = corpData.default
          }else{
            slot = null
          }
        }
      });
      this.slots[el.occupationSlot[0]] = el;

      // eslint-disable-next-line
      console.log(this.slots)

      let eventData = []
      this.slots.forEach(slot => {
        if(slot){
          eventData.push(slot.asset)
        }else{
          eventData.push(null)
        }
      })

      
      //window.ue.game.callevent("charaCustom", JSON.stringify(eventData));
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.charaCustomContainer {
  width: 20vw;
  margin: 30px;
  height: calc(100vh - 60px);

  display: flex;
  flex-direction: column;
  align-items: stretch;
  overflow: auto;
}
</style>
