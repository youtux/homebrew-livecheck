class I386ElfGdb
  livecheck do
    url "https://ftp.gnu.org/gnu/gdb/?C=M&O=D"
    regex(/href="gdb-(\d+(?:\.\d+)+)\.t/)
  end
end
