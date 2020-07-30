class Jansson
  livecheck do
    url "https://digip.org/jansson/releases/"
    regex(/href=.*?jansson[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
