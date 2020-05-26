class Ephemeralpg
  livecheck do
    url "https://eradman.com/ephemeralpg/"
    regex(/href=['"][^'"]*?ephemeralpg-(\d+(?:\.\d+)+)\.t/)
  end
end
