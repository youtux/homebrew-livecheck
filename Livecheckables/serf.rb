class Serf
  livecheck :url   => "https://www.serf.io/downloads.html",
            :regex => %r{href="https://releases.hashicorp.com/serf/([0-9\.]+)}
end
