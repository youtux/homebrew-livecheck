class Mmv
  livecheck do
    url "https://deb.debian.org/debian/pool/main/m/mmv/"
    regex(/href=.*?mmv[._-]v?(\d+(?:\.\d+)+[a-z]?)\.orig\.t/i)
  end
end
