<template>
  <div>
    <h1>Здесь ваш текст</h1>
    <p>Счётчик: {{ count }} </p>
    <div class="form" v-for="item in msg" :key="item.message">
      <div v-html="item.html"></div>
    </div>
  </div>
  <input v-on:keyup.enter="onEnter" id="durak" type="text">
  <button @click="AddIt()">нажми на меня</button>
</template>

<script>

  export default {
    data() {
      return {
        count: 0,
        msg: []
      }
    },
    methods: {
      onEnter: function() {
        if (document.getElementById("durak").value != "") this.count++;
        this.msg.push({html: `<p>${document.getElementById("durak").value}</p>`});
        document.getElementById("durak").value = "";
      },
      AddIt() {
        if (document.getElementById("durak").value != "") this.count++;
        this.msg.push({html: `<p>${document.getElementById("durak").value}</p>`});
        document.getElementById("durak").value = "";
      }
    }
  }
</script>

<style scoped>
  h1 {
    margin-top: 0;
  }
</style>
