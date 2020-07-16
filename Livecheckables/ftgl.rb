class Ftgl
  livecheck do
    url :stable
    regex(%r{url=.*?/ftgl-v?(\d+(?:\.\d+)+(?:-rc\d*)?)\.t}i)
  end
end
