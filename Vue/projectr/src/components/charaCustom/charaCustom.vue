<template>
  <div class="charaCustomContainer">
    <categorie :key="cat" v-for="cat in categorieList" :namecat="cat"/>
  </div>
</template>

<script>
import categorie from "./categorie";

export default {
  name: "charaCustom",
  components: {
    categorie
  },
  props: {},
  data() {
    return {
      categorieList: ["Accessoires", "Tete", "Torse", "Jambe", "Pied"]
    };
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.charaCustomContainer {
  width: 40vw;
  margin: 30px;
  height: calc(100vh - 60px);

  display: flex;
  flex-direction: column;
  align-items: stretch;
  overflow: auto;
}
</style>
