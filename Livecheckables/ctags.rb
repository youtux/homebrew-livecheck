class Ctags
  livecheck do
    url "https://sourceforge.net/projects/ctags/"
    regex(%r{url=.*?/ctags[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
