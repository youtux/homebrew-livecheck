class Quvi
  livecheck do
    url :stable
    regex(%r{url=.*?/quvi-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
