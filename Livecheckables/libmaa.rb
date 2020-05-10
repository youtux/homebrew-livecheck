class Libmaa
  livecheck :url   => "https://sourceforge.net/projects/dict/",
            :regex => %r{url=.+?/libmaa-v?(\d+(?:\.\d+)+)\.t}
end
