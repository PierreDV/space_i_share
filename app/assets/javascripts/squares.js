var boxId = 0

function squarePusher(event) {
  for(var i=0; i<4; i++) {
    var box = document.createElement('div');
    box.id = i + 1;
    box.className = 'square';
    box.style.backgroundColor = randomColor();
    event.target.appendChild(box);
  };
};

function randomColor() {
  return '#' + Math.floor(Math.random()*16777215).toString(16);
};

function viewNodes() {
  container = document.getElementsByClassName("square");
  console.log(container);
};
