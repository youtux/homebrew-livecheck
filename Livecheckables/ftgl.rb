class Ftgl
  livecheck do
    url :stable
    regex(%r{url=.*?/ftgl[._-]v?(\d+(?:\.\d+)+(?:-rc\d*)?)\.t}i)
  end
end
