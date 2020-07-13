class Libmikmod
  livecheck do
    url "http://mikmod.sourceforge.net/"
    regex(/href=.*?libmikmod[._-](\d+(?:\.\d+)+)\.t/i)
  end
end
