class Smpeg
  livecheck do
    url "http://svn.icculus.org/smpeg/tags/"
    regex(%r{href=.*?release[._-]v?([01](?:[._]\d+)+)/}i)
  end
end
