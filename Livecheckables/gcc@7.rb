class GccAT7
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/"
    regex(%r{href="gcc-(7\.[0-9.]+)/"})
  end
end
