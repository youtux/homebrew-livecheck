class Pyenv
  livecheck :url => "https://github.com/pyenv/pyenv/releases",
            :regex => %r{Latest.*?href="/pyenv/pyenv/tree/v?([0-9\.]+)}m
end
