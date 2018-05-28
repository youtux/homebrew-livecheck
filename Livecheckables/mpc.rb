class Mpc
  livecheck :url => "https://www.musicpd.org/download/mpc/0/",
            :regex => /href="mpc-([0-9\.]+)\.t/
end
