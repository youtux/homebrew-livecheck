class Snort
  livecheck do
    url "https://www.snort.org/downloads"
    regex(/href=.*?snort-([0-9.]+)\.t/i)
  end
end
