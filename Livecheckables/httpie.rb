class Httpie
  livecheck :url => "https://pypi.python.org/pypi/httpie",
            :regex => /httpie-([0-9,\.]+)\./
end
