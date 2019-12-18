<template>
  <div id="main">
    <div :key="categorie" v-for="categorie in categorieList">
      {{categorie}}
    </div>
  </div>
</template>

<script>
export default {
  name: 'charaCustom',
  props: {},
  data(){
    return{
      categorieList: ["Tete","Torse","Jambe","Pied"]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
#main{
  width: 25vw;
  height: 100%;
  background-color: blue;
  margin: 30px;


  display: flex;
  flex-direction: column;
  align-items: stretch;
  
}
</style>
