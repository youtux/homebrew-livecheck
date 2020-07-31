class Mairix
  livecheck do
    url "https://sourceforge.net/projects/mairix/"
    regex(%r{/mairix[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
