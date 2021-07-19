import gintro/[gio, glib]

proc printAppInfo(appInfo: AppInfo) =
  echo appInfo.supportsFiles, "\n"
  echo appInfo.supportedTypes, "\n"
  echo appInfo.getCommandline, "\n"
  echo appInfo.getName, "\n"

gio.getDefaultForType("text/x-vala", true).printAppInfo()
