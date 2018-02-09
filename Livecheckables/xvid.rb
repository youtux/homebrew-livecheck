class Xvid
  livecheck :url => "https://www.xvid.com/download/",
            :regex => %r{href=".*?/Xvid-([0-9\.]+)-}
end
