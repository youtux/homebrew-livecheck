class Faac
  livecheck do
    url :stable
    regex(%r{url=.*?/faac[._-]v?(\d+(?:\.\d+)*)\.t}i)
  end
end
