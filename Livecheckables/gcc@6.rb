class GccAT6
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/"
    regex(%r{href="gcc-(6\.[0-9\.]+)/"})
  end
end
