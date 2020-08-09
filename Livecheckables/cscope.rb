class Cscope
  livecheck do
    url :stable
    regex(%r{url=.*?/cscope[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
