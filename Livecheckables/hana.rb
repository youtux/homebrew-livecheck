class Hana
  livecheck :url => "https://github.com/boostorg/hana/releases",
            :regex => %r{href="/boostorg/hana/tree/v?([0-9\.]+)}
end
