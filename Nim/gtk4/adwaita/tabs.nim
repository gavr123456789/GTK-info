import gintro/[gtk4, gobject, gio, adw]
import std/with


proc activate(app: gtk4.Application) =
  let
    header = adw.newHeaderBar()
    window = adw.newApplicationWindow(app)

    adwBox = newBox(Orientation.vertical, 0)
    mainBox = newBox(Orientation.vertical, 0)
    label1 = newLabel("on adwaita ApplicationWindow bottom corners are rounded")
    label2 = newLabel("This is Page 2")

    tabView = newTabView()
    tabBar = newTabBar()

  tabView.hexpand = true
  tabView.vexpand = true
  tabBar.view = tabView
  let page1 = tabView.addPage(label1)
  let page2 = tabView.addPage(label2)

  page1.title = "Tab №1"
  page2.title = "Tab №2"

  

  with mainBox: 
    append tabBar
    append tabView
    

  with adwBox:
    append header
    append mainBox

  with label1:
    text = "Page 1"
    marginTop = 10
    marginBottom = 10
    marginStart = 10
    marginEnd = 10


  with window:
    title = "Adwaita ApplicationWindow"
    setChild adwBox
    show

proc initAdw(app: Application) = 
  adw.init()

proc main =
  let app = newApplication("org.gtk.example")
  app.connect("startup", initAdw)
  app.connect("activate", activate)
  discard run(app)

main()
