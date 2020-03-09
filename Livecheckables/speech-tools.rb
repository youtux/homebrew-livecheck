class SpeechTools
  livecheck :url   => "http://festvox.org/packed/festival/?C=M&O=D",
            :regex => %r{href="(\d+(?:\.\d+)+)/?"}
end
