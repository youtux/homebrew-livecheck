class Akka
  livecheck :url   => "https://github.com/akka/akka.git",
            # single digit for major version since
            # v2.6.4 is newer than v10.1.0
            :regex => /^v?(\d(?:\.\d+)+)$/
end
