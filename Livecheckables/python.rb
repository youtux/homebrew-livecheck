class Python
  livecheck :url => "https://www.python.org/downloads/",
            :regex => %r{href="https://www.python.org/ftp/python/([0-9\.]+)}
end
