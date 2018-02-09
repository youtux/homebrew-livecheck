class Abnfgen
  livecheck :url => "http://www.quut.com/abnfgen/",
            :regex => %r{href=.*?/abnfgen-([0-9\.]+)\.t}
end
