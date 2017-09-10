class FbClient
  livecheck :url => "https://paste.xinu.at/",
            :regex => %r{Latest release:.*?/fb-([0-9\.]+)\.t}
end
