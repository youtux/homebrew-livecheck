class Pngcheck
  livecheck do
    url :stable
    regex(%r{url=.*?/pngcheck-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
