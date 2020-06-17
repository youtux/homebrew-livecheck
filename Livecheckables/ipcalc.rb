class Ipcalc
  livecheck do
    url "http://jodies.de/ipcalc-archive"
    regex(/href=.*?ipcalc-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
