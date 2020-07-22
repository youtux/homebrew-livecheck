class Wimlib
  livecheck do
    url "https://wimlib.net/downloads/"
    regex(/href=.*?wimlib-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
