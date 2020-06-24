class Vbindiff
  livecheck do
    url :homepage
    regex(/href=.*?vbindiff-v?(\d+(?:\.\d+)+(?:.?beta\d+)?)\.t/i)
  end
end
