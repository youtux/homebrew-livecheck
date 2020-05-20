class Pipenv
  livecheck :url   => "https://pypi.org/simple/pipenv",
            :regex => %r{/pipenv-([0-9,\.]+)\.t}
end
