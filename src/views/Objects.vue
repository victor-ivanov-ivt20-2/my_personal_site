<template>
  <div class="objects">
    <h1 class="h1_1">Сегодня</h1>
    {{ whats__week }}
    <h2 class="h1_1">{{ Day }}</h2>
    <div v-for="item in Objects__today" :key="item.name">
      <div v-if="item.checked">
        {{ item.name }}
      </div>
    </div>
    <div v-if="!Day">
      <button @click="now__time()" name="button">Показать</button>
    </div>
    <div v-else>
      <button @click="delete__it()" name="button">Скрыть</button>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src

export default {
  data() {
    return {
      Objects: [
        {name: 'Английский язык', checked: false},
        {name: 'Русский язык и культура речи', checked: false},
        {name: 'Основы программирования', checked: false},
        {name: 'Организация вычислительных систем', checked: false},
        {name: 'Физкультура', checked: false},
        {name: 'Основы права', checked: false},
        {name: 'Введение в сквозные цифровые технологии', checked: false},
        {name: 'Математика', checked: false},
        {name: 'Дискретная математика', checked: false},
        {name: 'Отдых', checked: false}
      ],
      Day: "",
      even: [[8, 1, 0, 5, 9, 9], [9, 2, 2, 2, 9, 9],
      [7, 7, 4, 3, 9, 9], [9, 6, 1, 3, 3, 9],
      [9, 9, 0, 5, 9, 9], [9, 9, 4, 9, 9, 9]],
      odd: [[8, 8, 0, 5, 9, 9], [9, 9, 2, 2, 9, 9],
      [7, 7, 4, 6, 9, 9], [9, 6, 1, 9, 9, 9],
      [9, 9, 0, 9, 9, 9], [9, 9, 4, 9, 9, 9]],
      Objects__today: [],
      even_week: true,
      week: ""
    }
  },
  computed: {
    whats__week: function() {
      this.whats();
      return this.week;
    }
  },
  methods: {
    now__time: function() {
      let day = new Date()
      if (this.even_week) {
        switch (day.getDay()) {
          case 1:
          this.Day = "Понедельник"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.even[0][i]].checked = true;
            this.Objects__today.push(this.Objects[this.even[0][i]])
          }
          break;
          case 2:
          this.Day = "Вторник"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.even[1][i]].checked = true;
            this.Objects__today.push(this.Objects[this.even[1][i]])
          }
          break;
          case 3:
          this.Day = "Среда"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.even[2][i]].checked = true;
            this.Objects__today.push(this.Objects[this.even[2][i]])
          }
          break;
          case 4:
          this.Day = "Четверг"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.even[3][i]].checked = true;
            this.Objects__today.push(this.Objects[this.even[3][i]])
          }
          break;
          case 5:
          this.Day = "Пятница"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.even[4][i]].checked = true;
            this.Objects__today.push(this.Objects[this.even[4][i]])
          }
          break;
          case 6:
          this.Day = "Суббота"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.even[5][i]].checked = true;
            this.Objects__today.push(this.Objects[this.even[5][i]])
          }
          break;
          default:
          this.Day = "Воскресенье"
          break;
        }
      } else {
        switch (day.getDay()) {
          case 1:
          this.Day = "Понедельник"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.odd[0][i]].checked = true;
            this.Objects__today.push(this.Objects[this.odd[0][i]])
          }
          break;
          case 2:
          this.Day = "Вторник"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.odd[1][i]].checked = true;
            this.Objects__today.push(this.Objects[this.odd[1][i]])
          }
          break;
          case 3:
          this.Day = "Среда"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.odd[2][i]].checked = true;
            this.Objects__today.push(this.Objects[this.odd[2][i]])
          }
          break;
          case 4:
          this.Day = "Четверг"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.odd[3][i]].checked = true;
            this.Objects__today.push(this.Objects[this.odd[3][i]])
          }
          break;
          case 5:
          this.Day = "Пятница"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.odd[4][i]].checked = true;
            this.Objects__today.push(this.Objects[this.odd[4][i]])
          }
          break;
          case 6:
          this.Day = "Суббота"
          for (let i = 0; i < 6; i++) {
            this.Objects[this.odd[5][i]].checked = true;
            this.Objects__today.push(this.Objects[this.odd[5][i]])
          }
          break;
          default:
          this.Day = "Воскресенье"
          break;
        }
      }
    },
    delete__it: function() {
      this.Day = "";
      return this.Objects__today = [];
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
</style>
