class Sc68
  livecheck do
    url :stable
    regex(%r{url=.+?/sc68-v?(\d+(?:\.\d+)+)\.t})
  end
end
