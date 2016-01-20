jQuery = $ = require 'jquery'
# $(document).ready ->

cmd = 0
done = 2

$("#col-1").click ->
  console.log $("#cmd-select").text()
  $('#cmd').fadeOut 'slow', ->
    $('#work').fadeIn()

$(".rows").click ->
  cmdUp = cmd + parseFloat($(this).attr("value"))
  if cmdUp >= 0
    cmd = cmdUp;
    $('h5').text done+'/'+cmd
    $('#progress-bar').width done/cmd*100+"%"
  $("#cmd-select").text(cmd)

$('#work').click ->
  $('#work').fadeOut 'slow', ->
    $('#cmd').fadeIn()
