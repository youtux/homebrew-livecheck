class Msmtp
  livecheck do
    url "https://marlam.de/msmtp/download/"
    regex(/href=.*?msmtp-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
