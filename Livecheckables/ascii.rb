class Ascii
  livecheck do
    url "http://www.catb.org/~esr/ascii/"
    regex(/ascii-(\d+(?:\.\d+)+)/)
  end
end
