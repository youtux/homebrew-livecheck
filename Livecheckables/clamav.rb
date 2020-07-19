class Clamav
  livecheck do
    url "https://www.clamav.net/downloads"
    regex(/href=.*?clamav-([0-9.]+)\.t/i)
  end
end
