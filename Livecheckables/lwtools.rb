class Lwtools
  livecheck do
    url "http://www.lwtools.ca/releases/lwtools/"
    regex(/href=.*?lwtools-([0-9.]+)\.t/)
  end
end
