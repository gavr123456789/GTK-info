# nim c -r source_view5.nim
import gintro/[gtk4, gio, gobject, gtksource5]
import std/with

proc hello(button: StyleSchemeChooserButton) =
  echo "hello world"

proc activate(app: gtk4.Application) =
  let
    window = newApplicationWindow(app)
    scrolled = newScrolledWindow()
    headerBar = newHeaderBar()
    srcView = newView()
    srcCompleteonSnippets = newCompletionSnippets()
    srcCompleteonWords = newCompletionWords()
    languageManager = getDefaultLanguageManager()
    themeChooser = newStyleSchemeChooserButton()

  
  srcView.completion.addProvider(srcCompleteonSnippets)
  srcView.completion.addProvider(srcCompleteonWords)
    
  
  with srcView:
    autoIndent = true
    acceptsTab = true
    showLineNumbers = true
    showLineMarks = true
    showRightMargin = true
    smartBackspace = true
    smartHomeEnd = SmartHomeEndType.always
    highlightCurrentLine = true
    indentOnTab = true
    indentWidth = 2
    wrapMode = WrapMode.word
    enableSnippets = true

  themeChooser.connect("clicked", hello)
  with themeChooser:
    label = "change Color Scheme"
    connect("clicked", hello)

  with headerBar:
    packStart themeChooser

  scrolled.child = srcView
  with window:
    title = "headerBar"
    setTitlebar headerBar
    setChild scrolled
    show


proc main =
  let app = newApplication("org.gtk.example")
  app.connect("activate", activate)
  discard run(app)

main()
