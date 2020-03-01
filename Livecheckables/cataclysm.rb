class Cataclysm
  livecheck :url   => "https://github.com/CleverRaven/Cataclysm-DDA/releases",
            :regex => %r{Latest.*?href="/CleverRaven/Cataclysm-DDA/tree/v?([0-9a-zA-Z\.]+)}m
end
