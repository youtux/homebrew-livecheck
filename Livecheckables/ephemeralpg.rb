class Ephemeralpg
  livecheck :url   => "http://eradman.com/ephemeralpg/",
            :regex => %r{href=.*?/ephemeralpg-(\d+(?:\.\d+)+)\.t}
end
