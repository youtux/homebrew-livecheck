class Epsilon
  livecheck do
    url :stable
    regex(%r{url=.*?/epsilon[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
