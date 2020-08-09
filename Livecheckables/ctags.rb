class Ctags
  livecheck do
    url :stable
    regex(%r{url=.*?/ctags[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
