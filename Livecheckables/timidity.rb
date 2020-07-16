class Timidity
  livecheck do
    url :stable
    regex(%r{url=.*?/TiMidity%2B%2B-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
