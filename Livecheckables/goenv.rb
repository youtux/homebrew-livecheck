class Goenv
  livecheck :url   => "https://github.com/syndbg/goenv/releases",
            :regex => %r{releases/latest.*?href="/syndbg/goenv/tree/([0-9\.]+)"}m
end
