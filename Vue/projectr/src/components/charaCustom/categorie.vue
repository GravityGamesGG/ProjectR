<template>
  <div>
    <div @clic="catclic(namecat.toLowerCase()+'content')">{{namecat}}</div>
    <div :id="namecat.toLowerCase()+'content'"></div>
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
      categorieList: ["Accessoires", "Tete", "Torse", "Jambe", "Pied"]
    };
  },
  methods: {
    catclic() {}
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.content {
}
</style>
