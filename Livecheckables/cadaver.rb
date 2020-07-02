class Cadaver
  livecheck do
    url :homepage
    regex(/href=.*?cadaver-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
