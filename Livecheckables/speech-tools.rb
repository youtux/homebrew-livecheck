class SpeechTools
  livecheck :url   => "http://festvox.org/packed/festival/",
            :regex => %r{href="([0-9\.]+)/">}
end
