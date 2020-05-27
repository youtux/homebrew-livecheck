class BashCompletionAT2
  livecheck do
    url "https://github.com/scop/bash-completion/releases"
    regex(/href=".*bash-completion-([\d.]+\.[\d.]+)\.t/)
  end
end
