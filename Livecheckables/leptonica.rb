class Leptonica
  livecheck do
    url "https://github.com/DanBloomberg/leptonica/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
