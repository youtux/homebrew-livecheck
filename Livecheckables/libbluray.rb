class Libbluray
  livecheck :url => "https://download.videolan.org/pub/videolan/libbluray/",
            :regex => %r{>([\d\.]+)/<}
end
