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
import teteData from "./data/tete";
import torseData from "./data/torse";
import chaussureData from "./data/chaussure";

let customData = [
  {
    name: "Corp",
    data: corpData
  },
  {
    name: "Tête",
    data: teteData
  },
  {
    name: "Torse",
    data: torseData
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
