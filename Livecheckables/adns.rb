class Adns
  livecheck do
    url "https://www.chiark.greenend.org.uk/~ian/adns/ftp/"
    regex(/href="adns-([0-9\.]+)\.t/)
  end
end
