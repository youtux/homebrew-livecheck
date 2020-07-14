class GccAT5
  livecheck do
    url "https://ftp.gnu.org/gnu/gcc/"
    regex(%r{href=.*?gcc-(5\.[0-9.]+)/?["' >]})
  end
end
