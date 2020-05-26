class Mikmod
  livecheck do
    url "http://mikmod.sourceforge.net/"
    regex(/href=.*[^b]mikmod-([0-9,\.]+)\.tar/)
  end
end
