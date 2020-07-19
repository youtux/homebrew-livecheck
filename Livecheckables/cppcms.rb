class Cppcms
  livecheck do
    url :stable
    regex(%r{url=.*?/cppcms-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
