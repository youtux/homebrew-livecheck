class Prips
  livecheck :url   => "https://devel.ringlet.net/sysutils/prips/",
            :regex => /current version .*?prips.*?([0-9\.]+)/
end
