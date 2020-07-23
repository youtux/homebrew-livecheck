class Maxima
  livecheck do
    url "https://sourceforge.net/projects/maxima/"
    regex(%r{/maxima-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
