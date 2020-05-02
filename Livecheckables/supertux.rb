class Supertux
  livecheck :url   => "https://github.com/SuperTux/supertux/releases",
            :regex => %r{Latest.*?href="/SuperTux/supertux/tree/v?([0-9\.]+)}m
end
