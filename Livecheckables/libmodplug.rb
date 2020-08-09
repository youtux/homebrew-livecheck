class Libmodplug
  livecheck do
    url :stable
    regex(%r{url=.*?/libmodplug[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
