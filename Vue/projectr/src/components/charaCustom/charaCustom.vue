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
        null,//Cheveux
        null,//Torse dessous
        null,//Torse dessus
        null,//Accessoire
        null,//Jambe
        null,//Pied
        null//Corp
      ]
    }
  },
  methods:{
    itemClicked(el){
      //pour chaque slot deja present
      this.slots.forEach(slot => {
        
        if(slot == null) return
        
        //Si l'occupation du slot actuel comprend l'element qu'on veut rajouter
        if(slot.occupationSlot.includes(el.occupationSlot[0])){
          //Si le slot actuel est un corp
          if(slot.occupationSlot[0] == 6){
            //On definit le slot actuel avec corp par defaut
            this.slots[slot.occupationSlot[0]] = corpData.default
          }else{
            //On supprime le slot actuel car le nouvel element prendra sa place
            this.slots[slot.occupationSlot[0]] = null
          }
        }
      })

      //On supprime tout les slot que le nouvel element va occuper
      el.occupationSlot.forEach(occuSlot => {
        this.slots[occuSlot] = null
      })

      //On assigne le nouvel element à un slot
      this.slots[el.occupationSlot[0]] = el

      //Tableau à envoyer à l'event lua
      let eventData = []
      this.slots.forEach(slot => {
        if(slot){
          eventData.push(slot.asset)
        }else{
          eventData.push(false)
        }
      })
      
      window.ue.game.callevent("OnCharaCustom", JSON.stringify(eventData));
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.charaCustomContainer {
  position: absolute;
  top: 30px;
  right: 30px;
  width: 20vw;
  height: calc(100vh - 60px);

  display: flex;
  flex-direction: column;
  align-items: stretch;
  overflow: auto;
}
</style>
