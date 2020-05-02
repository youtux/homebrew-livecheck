class Coturn
  livecheck :url   => "http://turnserver.open-sys.org/downloads/",
            :regex => %r{href="v?(\d+(?:\.\d+)+)/"}
end
