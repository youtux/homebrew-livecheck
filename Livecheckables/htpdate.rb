class Htpdate
  livecheck do
    url "http://www.vervest.org/htp/archive/c/?C=M&O=D"
    regex(/href="htpdate-(\d+(?:\.\d+)+)\.t/)
  end
end
