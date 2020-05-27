class GccAT49
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/"
    regex(%r{href="gcc-(4\.9\.[0-9\.]+)/"})
  end
end
