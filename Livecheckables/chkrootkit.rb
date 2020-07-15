class Chkrootkit
  livecheck do
    url :homepage
    regex(/href=.*?download[^>]+>chkrootkit v?(\d+(?:\.\d+)+)/i)
  end
end
