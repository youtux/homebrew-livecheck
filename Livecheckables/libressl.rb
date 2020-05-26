class Libressl
  livecheck do
    url "https://www.libressl.org/"
    regex(/latest stable release is (\d+(?:\.\d+)+)/)
  end
end
