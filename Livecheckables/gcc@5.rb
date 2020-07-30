class GccAT5
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/"
    regex(%r{href=.*?gcc[._-]v?(5(?:\.\d+)+)/?["' >]}i)
  end
end
