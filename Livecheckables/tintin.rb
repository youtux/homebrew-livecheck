class Tintin
  livecheck do
    url "https://sourceforge.net/projects/tintin/"
    regex(%r{.*?/tintin-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
