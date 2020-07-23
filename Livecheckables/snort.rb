class Snort
  livecheck do
    url "https://www.snort.org/downloads"
    regex(/href=.*?snort-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
