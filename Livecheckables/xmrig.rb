class Xmrig
  livecheck :url => "https://github.com/xmrig/xmrig/releases",
            :regex => %r{latest.*?href="/xmrig/xmrig/tree/v?([0-9\.]+)}m
end
