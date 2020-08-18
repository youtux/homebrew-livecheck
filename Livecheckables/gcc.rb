class Gcc
  livecheck do
    url :stable
    regex(%r{href=.*?gcc[._-]v?(\d+(?:\.\d+)+)(?:/?["' >]|\.t)}i)
  end
end
