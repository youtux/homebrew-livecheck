class GccAT8
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/?C=M&O=D"
    regex(%r{href=.*?gcc[._-]v?(8(?:\.\d+)+)(?:/?["' >]|\.t)}i)
  end
end
