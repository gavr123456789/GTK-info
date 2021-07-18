import gintro/[gtk4, gobject, gio]

proc setup_cb(factory: SignalListItemFactory; listitem: ListItem) =
  let lb = newLabel()
  listitem.setChild(lb)

proc bind_cb(self: SignalListItemFactory; listitem: ListItem) =
  let lb: Label = Label(listItem.getChild)
  let strobj: StringObject = stringObject(listItem.getItem)
  lb.setText(strobj.getString)

proc unbind_cb(self: SignalListItemFactory; listitem: ListItem) =
  # There's nothing to do here.
  # If you does something like setting a signal in bind_cb,
  # then disconnecting the signal is necessary in unbind_cb.
  discard

proc teardown_cb(factory: SignalListItemFactory; listitem: ListItem) =
  listitem.setChild (nil)
  # When the child of listitem is set to NULL, the reference to GtkLabel will be released and lb will be destroyed.
  # Therefore, g_object_unref () for the GtkLabel object doesn't need in the user code.

# ----- activate, open, startup handlers -----
proc app_activate(app: Application) =
  echo "activate"
  let win = newApplicationWindow(app)
  win.setDefaultSize(600, 400)
  let scr = newScrolledWindow()
  win.setChild (scr)
  let sl: gio.ListModel = listModel(newStringList("one", "two", "three", "four"))
  let ns: NoSElection = newNoSelection(sl) # A selection model that does not allow selecting anything
  let factory: SignalListItemFactory = newSignalListItemFactory()
  factory.connect("setup", setup_cb)
  factory.connect("bind", bind_cb)
  factory.connect("unbind", unbind_cb)
  factory.connect("teardown", teardown_cb)
  let lv = newListView(ns, factory)
  scr.setChild (lv)
  win.show

proc app_startup(app: Application) =
  echo "startup"

proc main =
  let app = newApplication("org.gtk.example") # "com.github.ToshioCP.list1"
  app.connect("startup", app_startup)
  app.connect("activate", app_activate)
  let status = app.run
  quit(status)

main()
