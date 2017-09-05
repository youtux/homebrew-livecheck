class Clog
  livecheck :url => "https://tasktools.org",
            :regex => %r{tasktools.org/download/clog-([0-9\.]+)\.t}
end
