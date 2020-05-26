class Xmlsh
  livecheck do
    regex(%r{url=.+?/v?(\d+(?:\.\d+)+)/xmlsh}i)
  end
end
