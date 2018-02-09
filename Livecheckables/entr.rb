class Entr
  livecheck :url => "http://entrproject.org/",
            :regex => %r{href=.*?/entr-([0-9\.]+)\.t}
end
