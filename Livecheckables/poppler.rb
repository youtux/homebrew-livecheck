class Poppler
  livecheck do
    url "https://poppler.freedesktop.org/releases.html"
    regex(/href=.*?poppler[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
