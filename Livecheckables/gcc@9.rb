class GccAT9
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/?C=M&O=D"
    regex(%r{href=.*?gcc[._-]v?(9(?:\.\d+)+)(?:/?["' >]|\.t)}i)
  end
end
