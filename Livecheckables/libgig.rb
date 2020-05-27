class Libgig
  livecheck do
    url "https://download.linuxsampler.org/packages/"
    regex(/href="libgig-([0-9\.]+)\.t/)
  end
end
