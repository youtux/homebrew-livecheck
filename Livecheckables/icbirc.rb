class Icbirc
  livecheck :url   => "https://www.benzedrine.ch/icbirc.html",
            :regex => %r{href="/icbirc-([0-9\.]+)\.t}
end
