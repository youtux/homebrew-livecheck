class Pipenv
  livecheck :url => "https://pypi.python.org/pypi/pipenv",
            :regex => %r{/pipenv-([0-9,\.]+)\.t}
end
