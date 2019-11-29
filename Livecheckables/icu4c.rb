class Icu4c
  livecheck :url => "https://github.com/unicode-org/icu/releases",
            :regex => /href="\/unicode-org\/icu\/releases\/tag\/release-[^"]+"[^>]*>ICU ([\d\.]+)</
end
