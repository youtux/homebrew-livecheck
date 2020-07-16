class Opus
  livecheck do
    url "https://archive.mozilla.org/pub/opus/"
    regex(/href=.*?opus[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
