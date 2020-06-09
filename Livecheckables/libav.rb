class Libav
  livecheck do
    url :homepage
    regex(%r{href="//libav.org/releases/libav-([0-9.]+)\.t})
  end
end
