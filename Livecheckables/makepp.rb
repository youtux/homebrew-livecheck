class Makepp
  livecheck do
    url :stable
    regex(%r{url=.*?/makepp[._-]v?(\d+\.\d+)\.t}i)
  end
end
