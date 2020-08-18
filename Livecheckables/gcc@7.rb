class GccAT7
  livecheck do
    url :stable
    regex(%r{href=.*?gcc[._-]v?(7(?:\.\d+)+)(?:/?["' >]|\.t)}i)
  end
end
