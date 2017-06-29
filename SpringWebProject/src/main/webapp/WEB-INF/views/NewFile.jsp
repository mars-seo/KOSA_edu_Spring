<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Toggle Switches</title>
<style>
body {
  font: 13px/20px 'Lucida Grande', Tahoma, Verdana, sans-serif;
  color: #404040;
  background: #3b3f46;
}

.container {
  margin: 0 auto;
  padding: 90px 0;
  width: 400px;
  background-image: -webkit-radial-gradient(center, farthest-side, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0));
  background-image: -moz-radial-gradient(center, farthest-side, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0));
  background-image: -o-radial-gradient(center, farthest-side, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0));
  background-image: radial-gradient(center, farthest-side, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0));
}

.switch {
  position: relative;
  margin: 20px auto;
  height: 26px;
  width: 120px;
  background: rgba(0, 0, 0, 0.25);
  border-radius: 3px;
  -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.1);
}

.switch-label {
  position: relative;
  z-index: 2;
  float: left;
  width: 58px;
  line-height: 26px;
  font-size: 11px;
  color: rgba(255, 255, 255, 0.35);
  text-align: center;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.45);
  cursor: pointer;
}
.switch-label:active {
  font-weight: bold;
}

.switch-label-off {
  padding-left: 2px;
}

.switch-label-on {
  padding-right: 2px;
}

/*
 * Note: using adjacent or general sibling selectors combined with
 *       pseudo classes doesn't work in Safari 5.0 and Chrome 12.
 *       See this article for more info and a potential fix:
 *       http://css-tricks.com/webkit-sibling-bug/
 */
.switch-input {
  display: none;
}
.switch-input:checked + .switch-label {
  font-weight: bold;
  color: rgba(0, 0, 0, 0.65);
  text-shadow: 0 1px rgba(255, 255, 255, 0.25);
  -webkit-transition: 0.15s ease-out;
  -moz-transition: 0.15s ease-out;
  -o-transition: 0.15s ease-out;
  transition: 0.15s ease-out;
}
.switch-input:checked + .switch-label-on ~ .switch-selection {
  left: 60px;
  /* Note: left: 50% doesn't transition in WebKit */
}

.switch-selection {
  display: block;
  position: absolute;
  z-index: 1;
  top: 2px;
  left: 2px;
  width: 58px;
  height: 22px;
  background: #65bd63;
  border-radius: 3px;
  background-image: -webkit-linear-gradient(top, #9dd993, #65bd63);
  background-image: -moz-linear-gradient(top, #9dd993, #65bd63);
  background-image: -o-linear-gradient(top, #9dd993, #65bd63);
  background-image: linear-gradient(to bottom, #9dd993, #65bd63);
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.5), 0 0 2px rgba(0, 0, 0, 0.2);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.5), 0 0 2px rgba(0, 0, 0, 0.2);
  -webkit-transition: left 0.15s ease-out;
  -moz-transition: left 0.15s ease-out;
  -o-transition: left 0.15s ease-out;
  transition: left 0.15s ease-out;
}
.switch-blue .switch-selection {
  background: #3aa2d0;
  background-image: -webkit-linear-gradient(top, #4fc9ee, #3aa2d0);
  background-image: -moz-linear-gradient(top, #4fc9ee, #3aa2d0);
  background-image: -o-linear-gradient(top, #4fc9ee, #3aa2d0);
  background-image: linear-gradient(to bottom, #4fc9ee, #3aa2d0);
}
.switch-yellow .switch-selection {
  background: #c4bb61;
  background-image: -webkit-linear-gradient(top, #e0dd94, #c4bb61);
  background-image: -moz-linear-gradient(top, #e0dd94, #c4bb61);
  background-image: -o-linear-gradient(top, #e0dd94, #c4bb61);
  background-image: linear-gradient(to bottom, #e0dd94, #c4bb61);
}

</style>
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
  <section class="container">
    <div class="switch">
      <input type="radio" class="switch-input" name="view" value="week" id="week" checked>
      <label for="week" class="switch-label switch-label-off">Week</label>
      <input type="radio" class="switch-input" name="view" value="month" id="month">
      <label for="month" class="switch-label switch-label-on">Month</label>
      <span class="switch-selection"></span>
    </div>

    <div class="switch switch-blue">
      <input type="radio" class="switch-input" name="view2" value="week2" id="week2" checked>
      <label for="week2" class="switch-label switch-label-off">Week</label>
      <input type="radio" class="switch-input" name="view2" value="month2" id="month2">
      <label for="month2" class="switch-label switch-label-on">Month</label>
      <span class="switch-selection"></span>
    </div>

    <div class="switch switch-yellow">
      <input type="radio" class="switch-input" name="view3" value="week3" id="week3" checked>
      <label for="week3" class="switch-label switch-label-off">Week</label>
      <input type="radio" class="switch-input" name="view3" value="month3" id="month3">
      <label for="month3" class="switch-label switch-label-on">Month</label>
      <span class="switch-selection"></span>
    </div>
  </section>


</body>
</html>