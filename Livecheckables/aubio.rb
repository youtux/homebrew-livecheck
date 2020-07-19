class Aubio
  livecheck do
    url "https://aubio.org/pub/"
    regex(/href=.*?aubio-(\d+(?:\.\d+)+)\.t/i)
  end
end
