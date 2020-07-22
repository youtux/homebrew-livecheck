class Cabextract
  livecheck do
    url "https://github.com/kyz/libmspack.git"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end
end
