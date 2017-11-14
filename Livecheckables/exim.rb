class Exim
  livecheck :url => "https://mirrors.ocf.berkeley.edu/debian/pool/main/e/exim4/",
            :regex => /href="exim4_([0-9\.\-]+)\.debian\.t/
end
