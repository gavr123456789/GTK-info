import gintro/[gtk4, gobject, gio]
import std/with, os

type
  ControlWithMediaFile = tuple
    file: MediaFile
    controls: MediaControls

proc entryChanged(self: EntryBuffer, position: int, chars: string, nChars: int, media: ControlWithMediaFile) = 
  echo self.text
  if os.fileExists(self.text):
    media.file.clear
    media.file.setFilename self.text
# put player as chold of toggebtn
proc appActivate(app: Application) =
  let 
    window = newApplicationWindow(app)
    mainBox = newBox(Orientation.vertical, 3)
    mediaFile = newMediaFile()
    mediaControls = newMediaControls(mediaFile)
    mediaPathEntry = newEntry()
    toggle = newToggleButton()

  
  mediaPathEntry.placeholderText = "Enter music filename"
  mediaPathEntry.buffer.connect("inserted_text", entryChanged, (mediaFile, mediaControls))

  toggle.child = mediaControls
  with mainBox:
    append mediaPathEntry
    append toggle

  with window:
    child = mainBox
    title = "MediaControls"
    defaultSize = (250, 0)
    show

proc main =
  let app = newApplication("org.gtk.example")
  connect(app, "activate", appActivate)
  discard run(app)

main()
