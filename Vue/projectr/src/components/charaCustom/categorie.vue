<template>
  <div class="catContainer">
    <div :class="{catHeaderSelected: show, catHeader: !show}" @click="catclic()">{{catName}}</div>
    <div class="catContent" v-if="show">
      <div class="catItem" :key="el.name" v-for="el in catData" @click="$emit('onItemClicked', el)">{{elName(el)}}</div>
    </div>
  </div>
</template>

<script>
export default {
  name: "categorie",
  props: {
    catName: { type: String, required: true },
    catData: { required: true }
  },
  data() {
    return {
      show: false
    }
  },
  methods: {
    catclic() {
      //Affiche ou cache le contenu de la categorie clickée
      this.show = !this.show;
    },
    elName(el){
      //Renvoie juste le nom de l'asset sans le chemin
      let arr = el.asset.split("/");
      return arr[arr.length-1]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.catContainer {
  margin-bottom: 10px;
}
.catHeader:hover {
  background-color: rgb(255, 59, 59);
}
.catHeader {
  background-color: black;
  padding: 10px;
  border-radius: 5px;
  text-align: center;
  color: white;
  font-size: 22px;
}
.catHeaderSelected {
  background-color: red;
  border-radius: 5px 5px 0px 0px;
  padding: 10px;
  text-align: center;
  color: white;
  font-size: 22px;
}
.catContent {
  background-color: black;
  color: white;
  padding: 5px;

  display: flex;
  flex-direction: column;
}
.catItem{
  
}
</style>
