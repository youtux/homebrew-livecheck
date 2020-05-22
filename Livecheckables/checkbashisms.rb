class Checkbashisms
  livecheck :url   => "https://deb.debian.org/debian/pool/main/d/devscripts/",
            :regex => /href=.*?devscripts.v?(\d+(?:\.\d+)+)\.t/i
end
