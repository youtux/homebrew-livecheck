class Pike
  livecheck :url   => "https://pike.lysator.liu.se/",
            :regex => %r{href=".*?/latest-stable/Pike-v([0-9\.]+)\.t}
end
