class Libid3tag
  livecheck do
    url :stable
    regex(%r{url=.*?/libid3tag[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
