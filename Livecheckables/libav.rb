class Libav
  livecheck do
    url "https://libav.org/"
    regex(%r{href="//libav.org/releases/libav-([0-9\.]+)\.t})
  end
end
