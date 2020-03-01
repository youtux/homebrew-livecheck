class Checkbashisms
  livecheck :url   => "https://mirrors.ocf.berkeley.edu/debian/pool/main/d/devscripts/",
            :regex => /href="devscripts_([0-9\.]+)\.t/
end
