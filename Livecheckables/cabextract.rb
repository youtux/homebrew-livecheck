class Cabextract
  livecheck do
    url "https://github.com/kyz/libmspack.git"
    regex(/v([0-9.]+)/i)
  end
end
