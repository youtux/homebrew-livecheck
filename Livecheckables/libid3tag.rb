class Libid3tag
  livecheck do
    url :stable
    regex(%r{url=.*?/libid3tag-v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
