class Stress
  livecheck do
    url "https://deb.debian.org/debian/pool/main/s/stress/"
    regex(/href=.*?stress[._-]v?(\d+(?:\.\d+)+)\.orig\.t/i)
  end
end
