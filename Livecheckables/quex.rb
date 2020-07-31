class Quex
  livecheck do
    url "https://sourceforge.net/projects/quex/"
    regex(%r{.*?/quex[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
