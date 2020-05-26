class AmdatuBootstrap
  livecheck do
    url "https://bitbucket.org/amdatuadm/amdatu-bootstrap/downloads/"
    regex(/href=.*?bootstrap-(?:bin-)?r(\d+(?:\.\d+)*)(?:-bin)?\./)
  end
end
