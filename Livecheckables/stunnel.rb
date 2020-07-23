class Stunnel
  livecheck do
    url "https://www.stunnel.org/downloads.html"
    regex(/href=.*?stunnel-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
