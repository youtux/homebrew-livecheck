class GccAT7
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/"
    regex(%r{href=.*?gcc[._-]v?(7(?:\.\d+)+)/?["' >]}i)
  end
end
