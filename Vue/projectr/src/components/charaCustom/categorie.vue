<template>
  <div class="catContainer">
    <div :class="{catHeaderSelected: show, catHeader: !show}" @click="catclic()">{{namecat}}</div>
    <div
      class="catContent"
      v-if="show"
    >Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga quasi aspernatur quis distinctio, et dicta perferendis ipsa exercitationem voluptatem minima facilis ducimus debitis laudantium pariatur totam eum soluta. Pariatur!</div>
  </div>
</template>

<script>
export default {
  name: "categorie",
  props: {
    namecat: { type: String, required: true }
  },
  data() {
    return {
      categorieList: ["Accessoires", "Tete", "Torse", "Jambe", "Pied"],
      show: false
    };
  },
  methods: {
    catclic() {
      this.show = !this.show;
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.catContainer{
  margin-bottom: 10px;
}
.catHeader:hover{
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

.catHeaderSelected{
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
}
</style>
