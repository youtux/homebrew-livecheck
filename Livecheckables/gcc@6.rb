class GccAT6
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/"
    regex(%r{href=.*?gcc-v?(6(?:\.\d+)+)/?["' >]}i)
  end
end
