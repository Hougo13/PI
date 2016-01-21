jQuery = $ = require 'jquery'
EventEmitter = require 'events'

events = new EventEmitter()

cmd = 0
todo = 0
done = 2

ctr_cmd = (param, callback) ->
  switch param
    when 1
      cmd++
    when -1
      if cmd - 1 >= 0
        cmd--
    when 0
      todo = cmd
      events.emit "todo"
    when -2
      todo = cmd = 0
  if callback
    callback cmd
