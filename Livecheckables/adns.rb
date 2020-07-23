class Adns
  livecheck do
    url "https://www.chiark.greenend.org.uk/~ian/adns/ftp/"
    regex(/href=.*?adns-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
