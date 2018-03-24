class DnscryptProxy
  livecheck :url => "https://github.com/jedisct1/dnscrypt-proxy/releases",
            :regex => %r{Latest.*?href="/jedisct1/dnscrypt-proxy/tree/v?([0-9\.]+)}m
end
