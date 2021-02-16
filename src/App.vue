<template>
  <header class="header">
    <div class="container header__inner">
      <div id="nav">
        <router-link to="/"><img src="./assets/logo.png" alt="ну да" height="50" width="50"></router-link>
        <ul class="menu_ul">
          <li class="menu-item"><router-link to="/count">Пообщаться с собой</router-link></li>
          <li class="menu-item"><router-link to="/objects">Расписание занятий</router-link></li>
        </ul>
        <div class="menu-about"><router-link to="/about">Обо мне</router-link></div>
      </div>
    </div>
  </header>
  <div class="container">
    <router-view/>
  </div>
</template>

<style>
body {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  background-color: #fff;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #000;
}
li {
  list-style-type: none;
}
#nav {
  display: flex;
  justify-content: space-between;
  align-item: center;

}
.header__inner {
  background-color: #333;
}
.header {
  background-color: #333;
}
.container {
  max-width: 1210px;
  margin: 0 auto;
  padding: 0;
  /* background-color: #fff; */
}
.menu_ul {
  display: flex;
  margin-block-start: 0;
  margin-block-end: 0;
  padding-inline-start: 0;
  margin-top: 15px;
}
.menu-about {
  margin-top: 15px;
}
.menu-item + .menu-item {
  margin-left: 50px;
}
a {
  font-weight: bold;
  color: #999;
  text-decoration: none;
}
a:hover {
  color: #aaa;
}
a.router-link-exact-active {
  color: #41B883;
}
</style>
