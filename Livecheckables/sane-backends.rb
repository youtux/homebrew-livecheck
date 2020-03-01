class SaneBackends
  livecheck :url   => "http://www.sane-project.org/",
            :regex => %r{href="source\.html">SANE-Backends-([0-9\.]+)</a>}
end
