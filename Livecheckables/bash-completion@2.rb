class BashCompletionAT2
  livecheck do
    url "https://github.com/scop/bash-completion/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
