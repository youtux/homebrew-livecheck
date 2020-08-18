class GccAT8
  livecheck do
    url :stable
    regex(%r{href=.*?gcc[._-]v?(8(?:\.\d+)+)(?:/?["' >]|\.t)}i)
  end
end
