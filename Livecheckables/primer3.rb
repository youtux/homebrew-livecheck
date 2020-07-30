class Primer3
  livecheck do
    url :stable
    regex(%r{url=.*?/primer3[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
