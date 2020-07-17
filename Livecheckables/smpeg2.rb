class Smpeg2
  livecheck do
    url "http://svn.icculus.org/smpeg/tags/"
    regex(%r{href=.*?release[._-]v?(2(?:[._]\d+)+)/}i)
  end
end
