class Lame
  livecheck do
    url "https://sourceforge.net/projects/lame/"
    regex(%r{.*?/lame[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
