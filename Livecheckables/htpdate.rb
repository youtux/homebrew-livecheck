class Htpdate
  livecheck :url   => "http://www.vervest.org/htp/archive/c/?C=M&O=D",
            :regex => /href="htpdate-(\d+(?:\.\d+)+)\.t/
end
