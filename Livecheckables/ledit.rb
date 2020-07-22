class Ledit
  livecheck do
    url :homepage
    regex(/current .*? is v?(\d+(?:\.\d+)+) /i)
  end
end
