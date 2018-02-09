class Txr
  livecheck :url => "http://www.kylheku.com/cgit/txr",
            :regex => %r{href=.*?/txr-([0-9\.]+)\.t}
end
