class PyenvVirtualenv
  livecheck do
    url "https://github.com/pyenv/pyenv-virtualenv/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
