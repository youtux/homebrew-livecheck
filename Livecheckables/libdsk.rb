class Libdsk
  livecheck do
    url :homepage
    regex(%r{Stable version.*?/libdsk-([0-9.]+)\.t}im)
  end
end
