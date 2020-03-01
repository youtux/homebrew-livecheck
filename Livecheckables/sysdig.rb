class Sysdig
  livecheck :url   => "https://api.github.com/repos/draios/sysdig/releases/latest",
            :regex => /([0-9\.]+\.[0-9\.]+)"/
end
