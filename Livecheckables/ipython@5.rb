class IpythonAT5
  livecheck :url => "https://pypi.python.org/simple/ipython/",
            :regex => %r{href=".*?/ipython-(5[0-9\.]+)\.t}
end
