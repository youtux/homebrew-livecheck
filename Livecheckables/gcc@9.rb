class GccAT9
  livecheck do
    url :stable
    regex(%r{href=.*?gcc[._-]v?(9(?:\.\d+)+)(?:/?["' >]|\.t)}i)
  end
end
