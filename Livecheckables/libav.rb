class Libav
  livecheck do
    url "https://libav.org/releases/"
    regex(/href=.*?libav-([0-9.]+)\.t/)
  end
end
