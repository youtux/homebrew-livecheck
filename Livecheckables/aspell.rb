class Aspell
  livecheck do
    url "https://ftp.gnu.org/gnu/aspell/?C=M&O=D"
    regex(/href=.*?aspell[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
