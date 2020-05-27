class Msdl
  livecheck do
    regex(%r{url=.+?/msdl-v?(\d+(?:\.\d+)+(?:-r\d+)?)\.t}i)
  end
end
