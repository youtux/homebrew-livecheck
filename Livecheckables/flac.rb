class Flac
  livecheck do
    url "https://downloads.xiph.org/releases/flac/"
    regex(/href=.*?flac[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
