randomHex = ->
  return '#' + Math.floor(Math.random()*16777215).toString(16)

squareBuilder = ->
  return $('<div class="square"></div>').css('background-color', randomHex())

$('document').ready ->
  $('#container').click ->
    $('#container').append(squareBuilder()) for i in [0...4]

  $('#save').click ->
    console.log($('#square'))
