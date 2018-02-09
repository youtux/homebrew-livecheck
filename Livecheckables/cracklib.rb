class Cracklib
  livecheck :url => "https://github.com/cracklib/cracklib/releases",
            :regex => %r{href="/cracklib/cracklib/tree/cracklib-([0-9\.]+)}
end
