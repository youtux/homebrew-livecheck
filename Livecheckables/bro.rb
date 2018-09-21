class Bro
  livecheck :url => "https://www.bro.org/download/index.html",
            :regex => %r{href="https://www.bro.org/downloads/bro-([0-9\.]+)\.t}
end
