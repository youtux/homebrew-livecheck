class Libu2fHost
  livecheck do
    url "https://developers.yubico.com/libu2f-host/Releases/"
    regex(/href=.*?libu2f-host[._-]v?(\d+\.\d+\.\d+)\.t/i)
  end
end
