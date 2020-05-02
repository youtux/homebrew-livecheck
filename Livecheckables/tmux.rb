class Tmux
  livecheck :url   => "https://github.com/tmux/tmux/releases/latest",
            :regex => %r{href=.+/tag/v?(\d+(?:\.\d+)+[a-z]?)}i
end
