class Launch
  livecheck do
    url "https://sabi.net/nriley/software/"
    regex(/href="launch-([0-9\.]+)\.t/)
  end
end
