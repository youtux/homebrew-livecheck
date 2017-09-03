class Artemis
  livecheck :url => "https://github.com/sanger-pathogens/Artemis/releases",
            :regex => %r{href="/sanger-pathogens/Artemis/tree/v([0-9\.]+)"}
end
