class Gcc
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/?C=M&O=D"
    regex(%r{href="gcc-(\d+(?:\.\d+)+)(?:/?"|\.t)})
  end
end
