class Zlib
  livecheck do
    url "https://github.com/madler/zlib.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
