class Libressl
  livecheck do
    url :homepage
    regex(/latest stable release is (\d+(?:\.\d+)+)/)
  end
end
