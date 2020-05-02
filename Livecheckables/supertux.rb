class Supertux
  livecheck :url   => "https://github.com/SuperTux/supertux/releases/latest",
            :regex => %r{href=.+/tag/v?(\d+(?:\.\d+)+)}
end
