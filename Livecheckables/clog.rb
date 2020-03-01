class Clog
  livecheck :url   => "https://gothenburgbitfactory.org",
            :regex => %r{gothenburgbitfactory.org/download/clog-([0-9\.]+)\.t}
end
