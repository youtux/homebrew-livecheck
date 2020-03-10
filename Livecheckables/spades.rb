class Spades
  livecheck :url   => "http://cab.spbu.ru/files/?C=M&O=D",
            :regex => %r{href="release(\d+(?:\.\d+)+)/?"}
end
