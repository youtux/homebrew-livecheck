class Ntp
  livecheck do
    url "http://www.ntp.org/downloads.html"
    regex(/href=.*?ntp-v?(\d+(?:\.\d+)+(?:p\d+)?)\.t/i)
  end
end
