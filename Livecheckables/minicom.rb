class Minicom
  livecheck do
    url "https://deb.debian.org/debian/pool/main/m/minicom/"
    regex(/href=.*?minicom_v?(\d+(?:\.\d+)+)\.orig\.t/i)
  end
end
