class Libsass
  livecheck :url   => "https://github.com/sass/libsass/releases",
            :regex => %r{latest.*?href="/sass/libsass/tree/v?([0-9\.]+)}m
end
