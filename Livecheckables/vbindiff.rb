class Vbindiff
  livecheck do
    url :homepage
    regex(/href=.*?vbindiff[._-]v?(\d+(?:\.\d+)+(?:.?beta\d+)?)\.t/i)
  end
end
