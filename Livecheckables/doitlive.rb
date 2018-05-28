class Doitlive
  livecheck :url => "https://pypi.python.org/simple/doitlive/",
            :regex => %r{href=".*?/doitlive-([0-9\.]+)\.t}
end
