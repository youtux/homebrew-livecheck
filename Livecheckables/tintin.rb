class Tintin
  livecheck do
    url "https://sourceforge.net/projects/tintin/"
    regex(%r{.*?/tintin-([0-9.]+)\.t})
  end
end
