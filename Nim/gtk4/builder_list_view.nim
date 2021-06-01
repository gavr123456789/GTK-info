import gintro/[gtk4, gobject, gio, glib]
import std/with

const ui_string = """<interface>
  <template class="GtkListItem">
    <property name="child">
      <object class="GtkLabel">
        <binding name="label">
          <lookup name="string" type="GtkStringObject">
            <lookup name="item">GtkListItem</lookup>
          </lookup>
        </binding>
      </object>
    </property>
  </template>
</interface>"""

# proc setup_cb(factory: gtk4.SignalListItemFactory, listitem: gtk4.ListItem) =
#   listitem.setChild(newLabel(""))
  
# proc bind_cb(factory: gtk4.SignalListItemFactory, listitem: gtk4.ListItem) =
#   var 
#     lb = listitem.getChild().Label
#     strobj = cast[StringObject](listitem.getItem())
#     txt = gtk4.getString(strobj)
#   echo txt
#   lb.text = txt

# proc unbind_cb(factory: gtk4.SignalListItemFactory, listitem: gtk4.ListItem) =
#   # There's nothing to do here. 
#   # If you does something like setting a signal in bind_cb,
#   # then disconnecting the signal is necessary in unbind_cb. 
#   echo "unbind"

# proc teardown_cb(factory: gtk4.SignalListItemFactory, listitem: gtk4.ListItem) =
#   listitem.setChild (nil)
#   # When the child of listitem is set to NULL, the reference to GtkLabel will be released and lb will be destroyed. 
#   # Therefore, g_object_unref () for the GtkLabel object doesn't need in the user code. 

proc activate(app: gtk4.Application) =
  let
    window = newApplicationWindow(app)
    scr = newScrolledWindow()

    sl = gtk4.newStringList("Nim", "Vala", "Rust", "Zig")
    ls = cast[ListModel](sl)
    ss = gtk4.newSingleSelection(ls)
    bytes = glib.newBytesTake(ui_string)
    # builder = gtk4.newBuilderFromString(ui_string)
    factory = gtk4.newBuilderListItemFactoryFromBytes(nil, bytes)
    # factory3 = gtk4.newSignalListItemFactory()
    lv = newListView(ss, factory)
  
  scr.setChild lv

  # with factory:
  #   connect("setup", setup_cb)
  #   connect("bind", bind_cb)
  #   connect("unbind", unbind_cb)
  #   connect("teardown", teardown_cb)

  with window:
    defaultSize = (600, 400)
    title = "Nim ListView"
    setChild scr
    show

proc main =
  let app = newApplication("org.gtk.example")
  app.connect("activate", activate)
  discard run(app)

main()
