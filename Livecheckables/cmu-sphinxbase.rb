class CmuSphinxbase
  livecheck do
    url :stable
    regex(%r{url=.*?/sphinxbase-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
