class GccAT49
  livecheck do
    url :stable
    regex(%r{href=.*?gcc[._-]v?(4\.9(?:\.\d+)*)(?:/?["' >]|\.t)}i)
  end
end
