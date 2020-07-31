class AmdatuBootstrap
  livecheck do
    url "https://bitbucket.org/amdatuadm/amdatu-bootstrap/downloads/"
    regex(/href=.*?bootstrap[._-]v?(?:bin-)?r(\d+(?:\.\d+)*)(?:-bin)?\./i)
  end
end
