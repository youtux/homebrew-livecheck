class Vbindiff
  livecheck do
    url :homepage
    regex(/href=.*?vbindiff-v?(\d+(?:\.\d+)+(?:_beta\d+)?)\.t/i)
  end
end
