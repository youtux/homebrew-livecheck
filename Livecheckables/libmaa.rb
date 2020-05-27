class Libmaa
  livecheck do
    url "https://sourceforge.net/projects/dict/"
    regex(%r{url=.+?/libmaa-v?(\d+(?:\.\d+)+)\.t})
  end
end
