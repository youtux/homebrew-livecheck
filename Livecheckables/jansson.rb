class Jansson
  livecheck do
    url "https://digip.org/jansson/releases/"
    regex(/href=.*?jansson-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
