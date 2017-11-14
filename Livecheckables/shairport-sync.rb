class ShairportSync
  livecheck :url => "https://github.com/mikebrady/shairport-sync/releases",
            :regex => %r{latest.*?href="/mikebrady/shairport-sync/tree/([0-9\.]+)"}m
end
