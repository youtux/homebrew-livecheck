class Recoverjpeg
  livecheck do
    url "https://rfc1149.net/download/recoverjpeg/"
    regex(/href=.*?recoverjpeg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
