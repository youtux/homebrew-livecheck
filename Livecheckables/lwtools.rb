class Lwtools
  livecheck do
    url "http://www.lwtools.ca/releases/lwtools/"
    regex(/href=.*?lwtools-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
