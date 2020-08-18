class GccAT6
  livecheck do
    url :stable
    regex(%r{href=.*?gcc[._-]v?(6(?:\.\d+)+)(?:/?["' >]|\.t)}i)
  end
end
