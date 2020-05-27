class Jhiccup
  livecheck do
    url "https://www.azul.com/jhiccup/"
    regex(%r{href=".*?/jHiccup-([0-9\.]+)-dist})
  end
end
