class Smpeg
  livecheck do
    url "http://svn.icculus.org/smpeg/tags/"
    regex(%r{href=.*?release_v?(\d+(?:_\d+)+)/}i)
  end
end
