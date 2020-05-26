class Cuba
  livecheck do
    url "http://www.feynarts.de/cuba/"
    regex(/href="Cuba-([0-9\.]+)\.t/)
  end
end
