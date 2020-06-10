class Iozone
  livecheck do
    url :homepage
    regex(%r{HREF="src/current/iozone(3_[0-9]+)\.tar">Stable})
  end
end
