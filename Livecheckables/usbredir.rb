class Usbredir
  livecheck do
    url "https://www.spice-space.org/download/usbredir/"
    regex(/usbredir-([\d.]+)\.tar\.bz2/)
  end
end
