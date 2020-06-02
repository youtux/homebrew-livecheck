class Snort
  livecheck do
    url "https://www.snort.org/downloads"
    regex(%r{href=".*?/snort-([0-9.]+)\.t})
  end
end
