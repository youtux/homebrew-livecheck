class Ganglia
  livecheck :url   => "https://downloads.sourceforge.net/project/ganglia/",
            :regex => %r{url=.+?/ganglia-v?(\d+(?:\.\d+)+)\.t}
end
