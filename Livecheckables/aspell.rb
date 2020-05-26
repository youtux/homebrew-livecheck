class Aspell
  livecheck do
    url "https://ftp.gnu.org/gnu/aspell/?C=M&O=D"
    regex(/href=.+aspell-v?(\d+(?:\.\d+)+)\.t/)
  end
end
