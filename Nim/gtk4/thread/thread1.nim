# nim c --threads:on --gc:arc -r thread2.nim

import gintro/[gtk4, glib, gobject, gio]
import std/with

from  os import sleep

var channel: Channel[int]
var workThread: system.Thread[void]

var button: Button
var countdown {.global.} = 0

proc updateGUI(b: Button): bool =
  let msg = channel.tryRecv()
  if msg.dataAvailable:
    b.label = $msg.msg
    if msg.msg == 0:
      workThread.joinThread
      channel.close
      return SOURCE_REMOVE
  return SOURCE_CONTINUE


proc workProc =
  while countdown < 1000:
    sleep(1)
    inc(countdown)
    channel.send(countdown)



proc buttonClicked(button: Button) =
  countdown = 0
  button.label = "0001"
  createThread(workThread, workProc)
  discard timeoutAdd(1, updateGUI, button)



proc activate(app: gtk4.Application) =
  let
    window = newApplicationWindow(app)
  
  button = newButton("Click Me")
  button.connect("clicked",  buttonClicked)
    
  with window:
    title = "Countdown"
    defaultSize = (250, 50)
    setChild(button)
    show
  channel.open
  

proc main =
  let app = newApplication("org.gtk.example")
  app.connect("activate", activate)
  discard app.run()

main()