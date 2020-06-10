class Cuba
  livecheck do
    url :homepage
    regex(/href="Cuba-([0-9.]+)\.t/)
  end
end
