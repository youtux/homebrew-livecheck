class GccAT5
  livecheck do
    url :stable
    regex(%r{href=.*?gcc[._-]v?(5(?:\.\d+)+)(?:/?["' >]|\.t)}i)
  end
end
