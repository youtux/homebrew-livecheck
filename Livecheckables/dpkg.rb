class Dpkg
  livecheck :url   => "https://mirrors.ocf.berkeley.edu/debian/pool/main/d/dpkg/",
            :regex => /href="dpkg_([0-9\.]+)\.t/
end
