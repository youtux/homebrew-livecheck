class PcscLite
  livecheck do
    url "https://pcsclite.apdu.fr/files/"
    regex(/href=.*?pcsc-lite-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
