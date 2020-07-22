class DbusGlib
  livecheck do
    url "https://dbus.freedesktop.org/releases/dbus-glib/"
    regex(/href=.*?dbus-glib-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
