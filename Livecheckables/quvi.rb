class Quvi
  livecheck do
    url :stable
    regex(%r{url=.*?/quvi[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
