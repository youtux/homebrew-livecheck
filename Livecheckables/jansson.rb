class Jansson
  livecheck do
    url "https://digip.org/jansson/releases/"
    regex(/href=.*?jansson-([0-9.]+)\.t/)
  end
end
