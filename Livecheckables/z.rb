class Z
  livecheck :url   => "https://github.com/rupa/z/releases",
            :regex => %r{Latest.*?href="/rupa/z/tree/v?([0-9\.]+)}m
end
