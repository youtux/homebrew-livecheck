class Clamav
  livecheck do
    url "https://www.clamav.net/downloads"
    regex(/href=.*?clamav-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
