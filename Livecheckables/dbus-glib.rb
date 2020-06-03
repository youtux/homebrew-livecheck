class DbusGlib
  livecheck do
    url "https://dbus.freedesktop.org/releases/dbus-glib/"
    regex(/href="dbus-glib-([0-9.]+)\.t/)
  end
end
