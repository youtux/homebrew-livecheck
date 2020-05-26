class Biosig
  livecheck do
    regex(%r{url=.+?/biosig4c[^-]*?-v?(\d+(?:\.\d+)+)\.src\.t}i)
  end
end
