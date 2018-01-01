class Libcello
  livecheck :url => "http://libcello.org/",
            :regex => %r{href=".*?/libCello-([0-9\.]+)\.t.*?>Download}
end
