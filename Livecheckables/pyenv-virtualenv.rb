class PyenvVirtualenv
  livecheck :url => "https://api.github.com/repos/pyenv/pyenv-virtualenv/releases/latest",
            :regex => /([0-9\.]+\.[0-9\.]+)"/
end
