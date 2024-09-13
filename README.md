# Usefull Links
## [GTK Site](https://www.gtk.org/)
## [GTK4 API](https://www.gtk.org/docs/apis/)
## [ADW API](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/main/)
## [GNOME HIG](https://teams.pages.gitlab.gnome.org/Design/hig-www/)
### [Workbench](https://apps.gnome.org/ru/Workbench/) more than 100 code examples that you can run live
### [Some Lua\Vala\C](https://github.com/Miqueas/GTK-Examples) code examples


Gtk4 Tutorial for beginners (for C but its so good that it doesnt matter what language you will use) https://github.com/ToshioCP/Gtk4-tutorial  
Another C tutorial from GTK 4 devs https://docs.gtk.org/gtk4/getting_started.html

Also see [SHOWCASE.MD](SHOWCASE.MD) for examples of GTK apps sorted by languages.

# GTK for Languages
- Vala language was created by GNOME for GTK development(kinda like Swift from Apple)
  * https://vala.dev/
  * [Lib docs](https://valadoc.org/)
  * [Tutorial](https://wiki.gnome.org/Projects/Vala/Tutorial)
- Blueprint declarative DSL for GTK GUI, alla JSX but not XML(GTK has XML by default)
  * [Site](https://jwestman.pages.gitlab.gnome.org/blueprint-compiler/#)
  * [VSCode plugin](https://github.com/bodil/vscode-blueprint)
  * [Live preview tool](https://github.com/workbenchdev/Workbench)
----
GIR - Gobject Introspection - means lang can call any GObject lib
GTK3\4 - means its probably manual written bindings for GTK(or a link to a pkg with GIR-generated bindings)

- Kotlin JVM
  * GIR via Java API https://github.com/jwharm/java-gi
  * Dead GTK 4 with DSL 96% https://gitlab.com/gtk-kt/gtk-kt
- Kotlin Native
  * GIR https://gitlab.com/gtk-kn/gtk-kn
- C# GIR https://github.com/gircore/gir.core
- Nim GIR https://github.com/StefanSalewski/gintro
- Swift
  * Swift UI https://github.com/AparokshaUI/adwaita-swift [blog post](https://www.swift.org/blog/adwaita-swift/)
  * GIR https://github.com/rhx/gir2swift
  * GTK 3 https://github.com/rhx/SwiftGtk
  * GTK 4 https://github.com/rhx/SwiftGtk/tree/gtk4
- Zig 
  * Native C interop https://github.com/Sobeston/gtk4-zig-example
  * GIR https://github.com/Diegovsky/gintro
- Golang
  * GTK 3 https://github.com/gotk3/gotk3
  * GTK 4 Not ready https://github.com/diamondburned/gotk4
- Scheme
  * Guile GIR [g-golf](https://www.gnu.org/software/g-golf/index.html) Guile Object Library for (GNOME)
    
- Rust 
  * gtk-rs [GTK 3 4](https://github.com/gtk-rs/gtk) [New site](https://gtk-rs.org/)
  * relm - GTK 3 gui basic lib inspired by elm https://github.com/antoyo/relm
- JS/TS 
  * Node https://github.com/romgrk/node-gtk
  * TypeScript GIR bingings https://github.com/sammydre/ts-for-gjs
  * GJS(Official GTK lang) https://gitlab.gnome.org/GNOME/gjs/ Official GNOME js
  * Seed GObject JavaScriptCore bridge https://wiki.gnome.org/Projects/Seed
- Python(Official GTK lang) - https://pygobject.readthedocs.io/en/latest/
- Haskell 
  * GIR with GTK 3 and 4 support https://github.com/haskell-gi/haskell-gi
  * gi-gtk-declarative https://github.com/owickstrom/gi-gtk-declarative
  * Reactive Banana GI GTK https://github.com/mr/reactive-banana-gi-gtk
- Dlang 
  * GIR https://github.com/gtkd-developers/gir-to-d
  * GTK 3 https://github.com/gtkd-developers/GtkD
- Crystal 
  * GIR https://github.com/jhass/crystal-gobject
  * GTK 4 https://github.com/hugopl/gtk4.cr
- Standard ML Family http://giraffelibrary.org/
- Ruby https://github.com/ruby-gnome/ruby-gnome
- C++ 
  * GTKMM https://gitlab.gnome.org/GNOME/gtkmm
  * GIR https://gitlab.com/mnauw/cppgir
- Guile 
  * GNU G-Golf GIR https://www.gnu.org/software/g-golf/
  * Guile-GI https://github.com/spk121/guile-gi
- Scala-native
  * GTK 3 https://github.com/jokade/scalanative-gtk
- Smalltalk
  * GNU Smalltalk comes with GTK bindings and with a browser based on it
  * Pharo GTK 3 backend built in since version 9 https://vimeo.com/554479973
- Ada
  * GTK 3 https://github.com/AdaCore/gtkada

# Tutorials
- Nim
  * [GTK4 for Graphical User Interfaces](http://ssalewski.de/gtkprogramming.html) 2021
- D
  * [Начинаем использовать GTKD](https://habr.com/ru/post/259717/) 2015
  * [More than 100 nice lessons for GTK 3](https://gtkdcoding.com/)  Last 2020
  * [GTK 3 tutorial](https://sites.google.com/site/gtkdtutorial/) 2013
- Rust
  * [GTK 4](https://gtk-rs.org/gtk4-rs/git/book/)
- Haskell
  * [Создаём GTK-видеоплеер с использованием Haskell](https://habr.com/ru/company/mailru/blog/338176/) 2017
  * [GTK programming with haskell](https://haskell-at-work.com/episodes/2018-11-13-gtk-programming-with-haskell.html) 2018 with video
  * [How do I set up Gtk on Windows for Haskell development](https://stackoverflow.com/questions/47280515/how-do-i-set-up-gtk-on-windows-for-haskell-development)
  * [GUI Programming with gtk2hs](http://book.realworldhaskell.org/read/gui-programming-with-gtk-hs.html) 2008 GTK 2
- C
  * [Gtk4 Tutorial for beginners](https://github.com/ToshioCP/Gtk4-tutorial)
  * [GTK Glade C Programming Tutorial](https://prognotes.net/gtk-glade-c-programming/)
  * [GTK 3 ZetCode tutorial](https://zetcode.com/gui/gtk2/)
- Crystal
  * [Creating fast GUIs with Crystal, GTK and Glade](https://dev.to/geopjr/creating-fast-guis-with-crystal-gtk-and-glade-en6) GTK 3 2020
- Python
  * [The Python GTK+ 3 Tutorial](https://python-gtk-3-tutorial.readthedocs.io/en/latest/) 2021
  * [GSETTINGS – FLEXIBLE CONFIGURATION SYSTEM](http://zderadicka.eu/gsettings-flexible-configuration-system/) 2012
  * [How to create a GTK application using Python](https://belmoussaoui.com/article/5-how-to-create-a-gtk-application-using-python-part-1) 2019
  * [GTK 3 ZetCode](https://zetcode.com/gui/pygtk/) 2020
- Vala
  * [Creating full app GTK 3 for EOS](https://docs.elementary.io/develop/)
  * [Video tutorials for GTK 3](https://www.youtube.com/watch?v=7z0NVCrJr6A&list=PLriKzYyLb28mn2lS3c5yqMHgLREi7kR9-) 2021
  * [Vala GTK+ Examples](https://wiki.gnome.org/Projects/Vala/GTKSample) 2016
  * [Creating Custom GTK+ Widgets](https://wiki.gnome.org/Projects/Vala/CustomWidgetSamples)
- GJS 
  * https://gjs.guide/
- C#  
  * [GTK 2 ZetCode](https://zetcode.com/gui/gtksharp/) 2020

# Examples
- Python
  * [GTK 3 samples](https://developer.gnome.org/gnome-devel-demos/stable/beginner.py.html.en)
  * [custom Gtk.TreeModel for Gtk 3 ](https://gist.github.com/andialbrecht/4463278)
- Vala
  * [GTK 3 Widgets examples from ValaDoc](https://github.com/vala-lang/valadoc-org/tree/master/examples/gtk%2B-3.0)
  * This repo contains many other repos with all widget examples for GTK 3 and 4
- D 
  * [More than 100 nice lessons for GTK 3](https://gtkdcoding.com/)
- Nim 
  * This repo
- GJS
  * https://gjs.guide/showcase/
- Haskell
  * https://github.com/haskell-gi/haskell-gi/tree/master/examples

### Docs
- Vala
  * [GTK 3](https://valadoc.org/gtk+-3.0/index.htm)
  * [GTK 4](https://valadoc.org/gtk4/index.htm)  
  * [General G* Docs](https://valadoc.org/index.htm)
- C++
  * [GTKMM](https://www.gtkmm.org/en/documentation.html)
  * [GTKMM 4](https://developer.gnome.org/gtkmm-tutorial/unstable/index.html.en)
- Swift
  * [GTK 3](https://rhx.github.io/SwiftGtk3Doc/)
  * [GTK 4](https://rhx.github.io/SwiftGtk4Doc/index.html)
  * [General G* Docs](https://rhx.github.io/SwiftGtk/)
- D
  * [General G* Docs](https://api.gtkd.org/) (No GTK 4)
- Guile
  * [GTK 3](https://spk121.github.io/guile-gi/)
- GJS
  * [General G* Docs](https://gjs-docs.gnome.org/)  
- Haskell
  * [Project Wiki](https://github.com/haskell-gi/haskell-gi/wiki)
  
### Books  
- C  
  * [Foundations of GTK+ Development (Expert's Voice in Open Source) ](https://www.amazon.com/Foundations-Development-Experts-Voice-Source/dp/1590597931)  
  * [Gtk+ /Gnome Application Development](https://www.amazon.com/Gnome-Application-Development-Havoc-Pennington/dp/0735700788/ref=pd_lpo_14_img_1/138-1018100-4026252?_encoding=UTF8&pd_rd_i=0735700788&pd_rd_r=8b64b05a-bf02-4bc9-8b16-a40fc1ba05bd&pd_rd_w=UwFs6&pd_rd_wg=QeOAB&pf_rd_p=a0d6e967-6561-454c-84f8-2ce2c92b79a6&pf_rd_r=CYYE0TXYVEQVSHV0PTAA&psc=1&refRID=CYYE0TXYVEQVSHV0PTAA)  
- Vala + JS  
  * [GNOME 3 Application Development Beginner’s Guide](https://oiipdf.com/gnome-3-application-development-beginners-guide)  
- Vala  
  * [Introducing Vala Programming: A Language and Techniques to Boost Productivity](https://www.amazon.com/Introducing-Vala-Programming-Techniques-Productivity/dp/1484253795) Contains GTK 3 section.  
  
