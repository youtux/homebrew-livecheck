class Qd
  livecheck :url   => "https://crd-legacy.lbl.gov/~dhbailey/mpdist/",
            :regex => %r{href=".*?/qd-([0-9\.]+)\.t}
end
