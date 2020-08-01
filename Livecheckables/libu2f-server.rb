class Libu2fServer
  livecheck do
    url "https://developers.yubico.com/libu2f-server/Releases/"
    regex(/href=.*?libu2f-server[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
