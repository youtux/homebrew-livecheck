class Ctags
  livecheck do
    url "https://sourceforge.net/projects/ctags/"
    regex(%r{url=.*?/ctags-v?(\d+(?:\.\d+)+)\.t})
  end
end
