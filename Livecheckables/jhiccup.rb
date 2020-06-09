class Jhiccup
  livecheck do
    url :homepage
    regex(%r{href=".*?/jHiccup-([0-9.]+)-dist})
  end
end
