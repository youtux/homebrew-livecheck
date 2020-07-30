class Sc68
  livecheck do
    url :stable
    regex(%r{url=.*?/sc68[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
