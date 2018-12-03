class BashCompletion
  livecheck :url => "https://src.fedoraproject.org/repo/pkgs/bash-completion/",
            :regex => /href="bash-completion-(\d+\.[\d+,\.])\.tar\.bz2/
end
