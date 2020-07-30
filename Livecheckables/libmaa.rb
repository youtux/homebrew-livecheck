class Libmaa
  livecheck do
    url "https://sourceforge.net/projects/dict/"
    regex(%r{url=.*?/libmaa[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
