class Src
  livecheck do
    url "http://www.catb.org/~esr/src/"
    regex(%r{href='.*?/src-([0-9.]+)\.t})
  end
end
