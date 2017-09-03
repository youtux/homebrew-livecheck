class Libpng
  livecheck :url => "http://www.libpng.org/pub/png/libpng.html",
            :regex => %r{HREF="src/libpng-([0-9\.]+)-README.txt">}
end
