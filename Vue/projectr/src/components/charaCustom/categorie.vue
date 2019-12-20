<template>
  <div>
    <div @click="catclic()">{{namecat}}</div>
    <div v-if="show">fgdbdfshrshgsfh</div>
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
.content {
}
</style>
