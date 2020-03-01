class Ptex
  livecheck :url   => "http://ptex.us/download.html",
            :regex => %r{href=".*?/v([0-9\.]+)\.z}
end
