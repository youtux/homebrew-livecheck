class Recoverjpeg
  livecheck do
    url "https://rfc1149.net/download/recoverjpeg/"
    regex(/href=.*?recoverjpeg-([0-9.]+)\.t/)
  end
end
