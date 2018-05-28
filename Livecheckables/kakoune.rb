class Kakoune
  livecheck :url => "https://github.com/mawww/kakoune/releases",
            :regex => %r{Latest.*?href="/mawww/kakoune/tree/v?([0-9\.]+)}m
end
