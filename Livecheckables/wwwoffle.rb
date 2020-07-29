class Wwwoffle
  livecheck do
    url "https://www.gedanken.org.uk/software/wwwoffle/download/"
    regex(/href=.*?wwwoffle[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t/i)
  end
end
