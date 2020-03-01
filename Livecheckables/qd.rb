class Qd
  livecheck :url   => "http://crd-legacy.lbl.gov/~dhbailey/mpdist/",
            :regex => %r{href=".*?/qd-([0-9\.]+)\.t}
end
