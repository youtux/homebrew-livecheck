class Csvkit
  livecheck do
    url "https://pypi.org/simple/csvkit/"
    regex(/href=.*?csvkit-([0-9.]+)\.t/)
  end
end
