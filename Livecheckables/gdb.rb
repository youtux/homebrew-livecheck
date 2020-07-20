class Gdb
  livecheck do
    url "https://ftp.gnu.org/gnu/gdb/?C=M&O=D"
    regex(/href=.*?gdb-(\d+(?:\.\d+)+)\.t/i)
  end
end
