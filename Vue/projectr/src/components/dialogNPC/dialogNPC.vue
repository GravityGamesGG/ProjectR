<template>
  <div class="container">
      <div class="blackBand up"><p>{{npc.name}}</p></div>
      <div class="blackBand down"><p>{{npc.dialogText}}</p></div>
  </div>
</template>

<script>
export default {
  name: "dialogNPC",
  props: {
    npc: { required: true }
  },
  data() {
    return {
    }
  },
  methods: {
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.container{
    height: 100vh;
}
.blackBand{
    background-color: black;
    width: 100vw;
    height: 20vh;
}
.up{

}
.down{
    position: absolute;
    bottom: 0px;
}
p{
    color: white;
}
</style>
