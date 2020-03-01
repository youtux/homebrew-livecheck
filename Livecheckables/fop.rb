class Fop
  livecheck :url   => "https://xmlgraphics.apache.org/fop/index.html",
            :regex => /The latest version of FOP is available.*?>FOP ([0-9\.]+)</
end
