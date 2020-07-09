class Pyenv
  livecheck do
    url "https://github.com/pyenv/pyenv/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
