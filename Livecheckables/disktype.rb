class Disktype
  livecheck do
    url :stable
    regex(%r{url=.*?/disktype[._-]v?(\d+(?:\.\d+)*)\.t}i)
  end
end
