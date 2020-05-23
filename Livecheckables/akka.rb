class Akka
  livecheck :url   => "https://github.com/akka/akka/releases/latest",
            :regex => %r{href=.+?/tag/v?(\d+(?:\.\d+)+)["']}i
end
