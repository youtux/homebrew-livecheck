class AmdatuBootstrap
  livecheck :url   => "https://bitbucket.org/amdatuadm/amdatu-bootstrap/downloads/",
            :regex => /href=.*?bootstrap-(?:bin-)?r(\d+(?:\.\d+)*)(?:-bin)?\./
end
