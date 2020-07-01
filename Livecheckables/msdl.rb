class Msdl
  livecheck do
    url :stable
    regex(%r{url=.+?/msdl-v?(\d+(?:\.\d+)+(?:-r\d+)?)\.t}i)
  end
end
