class Corkscrew
  livecheck do
    url "https://deb.debian.org/debian/pool/main/c/corkscrew/"
    regex(/href=.*?corkscrew_v?(\d+(?:\.\d+)+)\.orig\.t/i)
  end
end
