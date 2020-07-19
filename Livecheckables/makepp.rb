class Makepp
  livecheck do
    url :stable
    regex(%r{url=.*?/makepp-v?(\d+\.\d+)\.t}i)
  end
end
