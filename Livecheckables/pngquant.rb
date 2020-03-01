class Pngquant
  livecheck :url   => "https://pngquant.org/releases.html",
            :regex => %r{href=.*?/pngquant-([0-9\.]+)-src\.t}
end
