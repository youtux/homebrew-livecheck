class Camellia
  livecheck do
    url :stable
    regex(%r{url=.+?/CamelliaLib-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
