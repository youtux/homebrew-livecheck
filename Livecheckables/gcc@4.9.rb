class GccAT49
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/"
    regex(%r{href=.*?gcc-v?(4\.9(?:\.\d+)+)/?["' >]}i)
  end
end
