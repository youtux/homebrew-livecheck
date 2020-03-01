class Inspircd
  livecheck :url   => "https://github.com/inspircd/inspircd/releases",
            :regex => %r{latest.*?href="/inspircd/inspircd/tree/v?([0-9\.]+)}m
end
