class Dbus
  livecheck do
    url :head
    regex(/^dbus[._-]v?(\d+\.\d*?[02468](?:\.\d+)*)$/i)
  end
end
