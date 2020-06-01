class BisonAT27
  livecheck do
    url "https://ftp.gnu.org/gnu/bison/?C=M&O=D"
    regex(%r{href="bison-(2(?:\.\d+)+)\.t}i)
  end
end
