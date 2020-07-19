class Poppler
  livecheck do
    url "https://poppler.freedesktop.org/releases.html"
    regex(/poppler-(\d+(?:\.\d+)*)\.t/i)
  end
end
