class Spades
  livecheck do
    url "http://cab.spbu.ru/files/?C=M&O=D"
    regex(%r{href="release(\d+(?:\.\d+)+)/?"})
  end
end
