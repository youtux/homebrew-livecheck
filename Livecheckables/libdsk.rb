class Libdsk
  livecheck do
    url :homepage
    regex(%r{Stable version.*?/libdsk-v?(\d+(?:\.\d+)+)\.t}im)
  end
end
