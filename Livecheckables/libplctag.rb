class Libplctag
  livecheck :url   => "https://github.com/kyle-github/libplctag/releases",
            :regex => %r{latest.*?href="/kyle-github/libplctag/tree/v?([0-9\.]+)}m
end
