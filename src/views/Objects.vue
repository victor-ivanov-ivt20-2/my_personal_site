<template>
  <div class="objects">
    {{ whats__week }}
    <button @click="delete__it()" name="button">смотрим</button>
    <h2>{{ Day }}</h2>
    <div class="objects__all">
      <div class="objects__e">
        <p>Чётная</p>
        <div v-for="item in Objects__even" :key="item.name"
        class="object" v-bind:style="{ 'background-color': item.object_color}">
        {{ item.name }}
        </div>
      </div>
      <div class="objects__o">
        <p>Нечётная</p>
        <div v-for="item in Objects__odd" :key="item.name"
        class="object" v-bind:style="{ 'background-color': item.object_color}">
        {{ item.name }}
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  data() {
    return {
      Day: "",
      even: [[8, 1, 0, 5, 9, 9], [9, 2, 2, 2, 9, 9],
      [7, 7, 4, 3, 9, 9], [9, 6, 1, 3, 3, 9],
      [9, 9, 0, 5, 9, 9], [9, 9, 4, 9, 9, 9],
      [9,9,9,9,9,9]],
      odd: [[8, 8, 0, 5, 9, 9], [9, 9, 2, 2, 9, 9],
      [7, 7, 4, 6, 9, 9], [9, 6, 1, 9, 9, 9],
      [9, 9, 0, 9, 9, 9], [9, 9, 4, 9, 9, 9],
      [9,9,9,9,9,9]],
      Objects__even: [],
      Objects__odd: [],
      even_week: false,
      week: "",
      day: 1,
      Objects: [
        {name: 'Английский язык'},
        {name: 'Русский язык и культура речи'},
        {name: 'Основы программирования'},
        {name: 'Организация вычислительных систем'},
        {name: 'Физкультура'},
        {name: 'Основы права'},
        {name: 'Введение в сквозные цифровые технологии'},
        {name: 'Математика'},
        {name: 'Дискретная математика'},
        {name: 'Отдых', object_color: '#ddd'}
      ]
    }
  },
  computed: {
    whats__week: function() {
      this.whats();
      this.now__time();
      return "";
    }
  },
  methods: {
    now__time: function() {
      // let day = new Date()
      if (this.even_week) {
        switch (this.day) {
          case 1:
          this.Day = "Понедельник"
          for (let i = 0; i < 6; i++)
          this.Objects__even.push(this.Objects[this.even[0][i]]);
          for (let i = 0; i < 6; i++)
          this.Objects__odd.push(this.Objects[this.odd[0][i]]);
          break;
          case 2:
          this.Day = "Вторник"
          for (let i = 0; i < 6; i++)
          this.Objects__even.push(this.Objects[this.even[1][i]]);
          for (let i = 0; i < 6; i++)
          this.Objects__odd.push(this.Objects[this.odd[1][i]]);
          break;
          case 3:
          this.Day = "Среда"
          for (let i = 0; i < 6; i++)
          this.Objects__even.push(this.Objects[this.even[2][i]]);
          for (let i = 0; i < 6; i++)
          this.Objects__odd.push(this.Objects[this.odd[2][i]]);
          break;
          case 4:
          this.Day = "Четверг"
          for (let i = 0; i < 6; i++)
          this.Objects__even.push(this.Objects[this.even[3][i]]);
          for (let i = 0; i < 6; i++)
          this.Objects__odd.push(this.Objects[this.odd[3][i]]);
          break;
          case 5:
          this.Day = "Пятница"
          for (let i = 0; i < 6; i++)
          this.Objects__even.push(this.Objects[this.even[4][i]]);
          for (let i = 0; i < 6; i++)
          this.Objects__odd.push(this.Objects[this.odd[4][i]]);
          break;
          case 6:
          this.Day = "Суббота"
          for (let i = 0; i < 6; i++)
          this.Objects__even.push(this.Objects[this.even[5][i]]);
          for (let i = 0; i < 6; i++)
          this.Objects__odd.push(this.Objects[this.odd[5][i]]);
          break;
          default:
          this.Day = "Воскресенье";
          for (let i = 0; i < 6; i++)
          this.Objects__even.push(this.Objects[this.even[6][i]]);
          for (let i = 0; i < 6; i++)
          this.Objects__odd.push(this.Objects[this.odd[6][i]]);
          break;
        }
      }
    },
    delete__it: function() {
      this.Objects__even = [];
      this.Objects__odd = [];
      if (this.day < 7) return this.day += 1;
      else {
        return this.day = 1;
      }
    },
    whats() {
      let year = new Date().getFullYear();
      let month = new Date().getMonth();
      let today = new Date(year, month, 0).getTime();
      let now = new Date().getTime();
      let week = Math.round((now - today) / (1000 * 60 * 60 * 24 * 7));
      if (week % 2 == 0) {
        this.week = "Чётная неделя";
        return this.even_week = true;
      }
      else {
        this.week = "Нечётная неделя"
        return this.even_week = false;
      }
    }
  }
}
</script>

<style scoped>
  .h1_1 {
    margin-top: 0;
  }
  .object {
    height: 75px;
    width: 200px;
    margin: auto;
  }
  .objects__all {
    display: flex;
    justify-content: center;
    align-items: stretch;
  }
</style>
