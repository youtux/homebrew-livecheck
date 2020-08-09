class Ffe
  livecheck do
    url :stable
    regex(%r{url=.*?/ffe[._-]v?(\d+(?:\.\d+)+(?:-\d+)?)\.t}i)
  end
end
