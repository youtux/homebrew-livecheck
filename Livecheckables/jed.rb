class Jed
  livecheck do
    url "https://www.jedsoft.org/releases/jed/"
    regex(/href=.*?jed.?v?(\d+(?:\.\d+)+(?:-\d+)?)\.t/i)
  end
end
