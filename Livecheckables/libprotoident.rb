class Libprotoident
  livecheck do
    url :homepage
    regex(%r{latest version is.*?href=".*?/libprotoident-([0-9.]+)\.t}m)
  end
end
