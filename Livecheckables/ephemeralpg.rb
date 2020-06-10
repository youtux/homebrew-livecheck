class Ephemeralpg
  livecheck do
    url :homepage
    regex(/href=['"][^'"]*?ephemeralpg-(\d+(?:\.\d+)+)\.t/)
  end
end
