class Basex
  livecheck do
    url "http://files.basex.org/releases/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
