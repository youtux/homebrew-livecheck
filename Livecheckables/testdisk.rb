class Testdisk
  livecheck do
    url "https://www.cgsecurity.org/wiki/TestDisk_Download"
    regex(/href=.*?testdisk-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
