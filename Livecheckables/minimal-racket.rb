class MinimalRacket
  livecheck do
    url "https://download.racket-lang.org/all-versions.html"
    regex(/>Version ([\d\.]+)/)
  end
end
