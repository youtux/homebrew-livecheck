class Minidjvu
  livecheck :url   => "http://minidjvu.sourceforge.net",
            :regex => /href=.+?minidjvu-v?(\d+(?:\.\d+)+)\.t/
end
