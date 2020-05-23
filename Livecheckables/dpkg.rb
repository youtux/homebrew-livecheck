class Dpkg
  livecheck :url   => "https://deb.debian.org/debian/pool/main/d/dpkg/",
            :regex => /href=.*?dpkg.v?(\d+(?:\.\d+)+)\.t/i
end
