class Usbredir
  livecheck do
    url "https://www.spice-space.org/download/usbredir/"
    regex(/href=.*?usbredir[._-]v?([\d.]+)\.t/i)
  end
end
