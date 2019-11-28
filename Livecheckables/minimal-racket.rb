class MinimalRacket
  livecheck :url => "https://download.racket-lang.org/all-versions.html",
            :regex => />Version ([\d\.]+)/
end
