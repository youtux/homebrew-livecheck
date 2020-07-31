class Usbredir
  livecheck do
    url "https://www.spice-space.org/download/usbredir/"
    regex(/usbredir[._-]v?([\d.]+)\.t/i)
  end
end
