class Onioncat
  livecheck do
    url "https://www.cypherpunk.at/ocat/download/Source/current/"
    regex(/href=.*?onioncat[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
