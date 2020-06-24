class Grace
  livecheck do
    url "https://deb.debian.org/debian/pool/main/g/grace/"
    regex(/href=.*?grace.v?(\d+(?:\.\d+)+)\.orig\.t/i)
  end
end
