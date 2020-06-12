class Libspectre
  livecheck do
    url "https://libspectre.freedesktop.org/releases/"
    regex(/href=.*?libspectre-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
