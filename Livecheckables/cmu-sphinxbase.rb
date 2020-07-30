class CmuSphinxbase
  livecheck do
    url :stable
    regex(%r{url=.*?/sphinxbase[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
