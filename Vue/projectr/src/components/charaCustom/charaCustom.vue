<template>
  <div class="charaCustomContainer">
    <categorie :key="cat" v-for="cat in customData" :catName="cat.name" :catData="cat.data"/>
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
  {
    name: "Corp",
    data: corpData
  },
  {
    name: "Cheveux",
    data: cheveuxData
  },
  {
    name: "Accessoire",
    data: accessoireData
  },
  {
    name: "TorseUp",
    data: torseUpData
  },
  {
    name: "TorseDown",
    data: torseDownData
  },
  {
    name: "Jambe",
    data: jambeData
  },
  {
    name: "Pied",
    data: chaussureData
  }
];


export default {
  name: "charaCustom",
  components: {
    categorie
  },
  props: {},
  data() {
    return {
      customData
    };
  }
};
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
