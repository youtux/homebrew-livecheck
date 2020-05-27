class Libosinfo
  livecheck do
    url "https://releases.pagure.org/libosinfo/?C=M&O=D"
    regex(/href="libosinfo-([\d.]+)\.t/)
  end
end
