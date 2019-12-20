<template>
  <div id="main">
    <categorie :key="cat" v-for="cat in categorieList" :namecat="cat"></categorie>
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
#main {
  width: 25vw;
  margin: 30px;
  background-color: lightgray;
  padding: 20px;
  border: 1px solid black;
  border-radius: 15px;

  display: flex;
  flex-direction: column;
  align-items: stretch;
  justify-content: space-between;
}

#main > div {
  background-color: gray;
  padding: 10px;
  border: 1px solid black;
  border-radius: 15px;
  text-align: center;
  color: white;
  font-size: 22px;
  margin-bottom: 20px;
}

#main > div:hover {
  background-color: lightblue;
}
</style>
