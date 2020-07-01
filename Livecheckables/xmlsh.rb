class Xmlsh
  livecheck do
    url :stable
    regex(%r{url=.+?/v?(\d+(?:\.\d+)+)/xmlsh}i)
  end
end
