class Tmux
  livecheck :url   => "https://github.com/tmux/tmux/releases",
            :regex => %r{Latest.*?href="/tmux/tmux/tree/v?([0-9\.]+[0-9a-z])}m
end
