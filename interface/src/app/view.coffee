$("#col-1").click ->
  console.log $("#cmd-select").text()
  ctr_cmd.selector 0
  $('#cmd').fadeOut 'slow', ->
    $('#work').fadeIn()
#
$(".rows").click ->
  ctr_cmd.selector parseFloat($(this).attr("value")), (disp) ->
    $("#cmd-select").text disp

$('#work').click ->
  $('#work').fadeOut 'slow', ->
    $('#cmd').fadeIn()

$('#work').dblclick ->
  console.log 'ok'
  
events.on 'todo', ->
  $('h5').text ctr_cmd.done+'/'+ctr_cmd.todo
  $('#progress-bar').width ctr_cmd.done/ctr_cmd.todo*100+"%"
