class Afio
  livecheck :url => "http://members.chello.nl/~k.holtman/afio.html",
            :regex => %r{latest version.*?href=".*?/afio-([0-9\.]+)\.t}
end
