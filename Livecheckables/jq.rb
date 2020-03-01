class Jq
  livecheck :url   => "https://github.com/stedolan/jq/releases",
            :regex => %r{Latest.*?href="/stedolan/jq/tree/jq-?([0-9\.]+)}m
end
