function randomColor() {
  return '#' + Math.floor(Math.random()*16777215).toString(16);
};

function divBuilder() {
  var div = document.createElement('div');
  div.style.backgroundColor = randomColor();
  div.className = 'square';
  return div;
}

function squarePusher(event) {
  for(var i=0; i<4; i++) {
    var box = divBuilder();
    box.id = i + box.style.backgroundColor;
    event.target.appendChild(box);
  };
};

function squareToObject(node) {
  var div = {
    "color_id" : node.id,
    "parent_id" : node.parentElement.id
  };
  return div;
};

function storeSquares(node) {
  result = [];
  var container = squareToObject(node);

  result.push(container);

  for(var i=0; i<node.childNodes.length; i++) {
    var box = squareToObject(node.childNodes[i]);
    result.push(box);
  };

  return result;
};

function squaresToJSON(elements) {
  const json = {
    "squares" : storeSquares(elements)
  };
  return json
};

function sendJSON() {
  const req = new XMLHttpRequest();
  var payload = squaresToJSON(document.getElementById('container'));
  req.open("post", payload);
  req.setRequestHeader("JSON", 'http://localhost:3000/squares/');
  req.send(payload);
  console.log(payload);
}
