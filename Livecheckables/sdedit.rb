class Sdedit
  livecheck do
    url :stable
    regex(%r{url=.*?/sdedit[._-]v?(\d+(?:\.\d+)+)\.jar}i)
  end
end
