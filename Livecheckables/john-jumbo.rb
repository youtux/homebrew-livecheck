class JohnJumbo
  livecheck :url => "http://www.openwall.com/john/",
            :regex => %r{href="j/john-([a-z0-9\.\-]+)\.t}
end
