class Ninja
  livecheck :url => "https://github.com/ninja-build/ninja/releases",
            :regex => /href="\/ninja-build\/ninja\/tree\/v([\d.]+\.[\d.]+\.[\d.]+)"/
end
