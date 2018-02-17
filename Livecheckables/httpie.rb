class Httpie
  livecheck :url => "https://pypi.python.org/pypi/httpie",
            :regex => %r{/httpie-([0-9,\.]+)\.t}
end
