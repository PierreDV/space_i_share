function randomColor() {
  return '#' + Math.floor(Math.random()*16777215).toString(16);
};

function divBuilder() {
  var div = document.createElement('div');
  div.style.backgroundColor = randomColor();
  div.id = div.style.backgroundColor;
  div.className = 'square';
  return div;
}

function squarePusher(event) {
  for(var i=0; i<4; i++) {
    var box = divBuilder();
    event.target.appendChild(box);
  };
};

function viewNodes() {
  container = document.getElementsByClassName("square");
  console.log(container);
};

function logPage(node, prefix) {
  console.log(prefix + node.nodeName);
  for(var i=0; i<node.childNodes.length; i++) {
    logPage(node.childNodes[i], prefix + '\t');
  }
}

function squareToObject(node) {
  var div = {
    "id" : node.id,
    "parent_id" : node.parentElement.id
  };
  return div;
}
