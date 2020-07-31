class DbusGlib
  livecheck do
    url "https://dbus.freedesktop.org/releases/dbus-glib/"
    regex(/href=.*?dbus-glib[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
