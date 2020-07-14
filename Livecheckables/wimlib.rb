class Wimlib
  livecheck do
    url "https://wimlib.net/downloads/"
    regex(/href=.*?wimlib-([0-9.]+)\.t/)
  end
end
