// $(document).ready(function(){
//   var _squarePusher = squarePusher;
//   var _randomColor = randomColor;
// });

function squarePusher(event) {
  for(i=0; i<4; i++) {
    var box1 = document.createElement('div');
    box1.className = 'square';
    box1.style.backgroundColor = randomColor();
    event.target.appendChild(box1);
  }
};

function randomColor() {
  return '#' + Math.floor(Math.random()*16777215).toString(16);
};

function viewNodes() {
  container = document.getElementById("container");
  console.log(container);
};
