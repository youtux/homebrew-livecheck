class Dbus
  livecheck do
    url :head
    regex(/^dbus-v?(\d+\.\d*?[02468](?:\.\d+)*)$/)
  end
end
