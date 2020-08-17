class Nsuds
  livecheck do
    url :stable
    regex(%r{url=.*?/nsuds[._-]v?(\d+(?:\.\d+)+[A-Z]?)\.t}i)
  end
end
