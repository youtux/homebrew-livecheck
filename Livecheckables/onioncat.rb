class Onioncat
  # Per https://www.onioncat.org/download/
  # The source code of OnionCat is managed on Github since 9th of January 2018.
  livecheck :url   => "https://github.com/rahra/onioncat.git",
            :regex => /^v?(\d+(?:\.\d+)+)$/
end
