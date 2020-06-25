class Sloccount
  livecheck do
    url :homepage
    regex(/href=.*?sloccount-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
