class Klavaro
  livecheck do
    url :stable
    regex(%r{url=.*?/klavaro[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
