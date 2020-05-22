class Fakeroot
  livecheck :url   => "https://deb.debian.org/debian/pool/main/f/fakeroot/",
            :regex => /href=.*?fakeroot.v?(\d+(?:\.\d+)+)\.orig\.t/i
end
