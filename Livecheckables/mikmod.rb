class Mikmod
  livecheck do
    url "http://mikmod.sourceforge.net/"
    regex(/href=.*?[^b]mikmod[._-](\d+(?:\.\d+)+)\.t/i)
  end
end
