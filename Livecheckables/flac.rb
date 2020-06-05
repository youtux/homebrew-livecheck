class Flac
  livecheck do
    url "https://downloads.xiph.org/releases/flac/"
    regex(/href=.*?flac-v?(\d+(?:\.\d+)+)\.t/)
  end
end
