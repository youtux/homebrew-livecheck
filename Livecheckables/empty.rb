class Empty
  livecheck do
    url :stable
    regex(%r{url=.*?/empty[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
