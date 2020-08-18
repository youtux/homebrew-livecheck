class GccAT6
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/?C=M&O=D"
    regex(%r{href=.*?gcc[._-]v?(6(?:\.\d+)+)(?:/?["' >]|\.t)}i)
  end
end
