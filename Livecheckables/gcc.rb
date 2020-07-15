class Gcc
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/?C=M&O=D"
    regex(%r{href=.*?gcc[._-]v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
