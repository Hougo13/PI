$("#col-1").click ->
  console.log $("#cmd-select").text()
  ctr_cmd 0
  $('#cmd').fadeOut 'slow', ->
    $('#work').fadeIn()

$(".rows").click ->
  ctr_cmd parseFloat($(this).attr("value")), (disp) ->
    $("#cmd-select").text disp

$('#work').click ->
  $('#work').fadeOut 'slow', ->
    $('#cmd').fadeIn()

events.on 'todo', ->
  $('h5').text done+'/'+todo
  $('#progress-bar').width done/todo*100+"%"
