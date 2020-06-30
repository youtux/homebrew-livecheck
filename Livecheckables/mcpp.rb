class Mcpp
  livecheck do
    url :stable
    regex(%r{url=.+?/mcpp-v?(\d+(?:\.\d+)+)\.t})
  end
end
