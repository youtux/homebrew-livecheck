class Htpdate
  livecheck do
    url "http://www.vervest.org/htp/archive/c/?C=M&O=D"
    regex(/href=.*?htpdate[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
