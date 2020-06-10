class Libflowmanager
  livecheck do
    url :homepage
    regex(%r{latest version is.*?href=".*?/libflowmanager-([0-9.]+)\.t}m)
  end
end
