class Libyubikey
  livecheck do
    url "https://developers.yubico.com/yubico-c/Releases/"
    regex(/href=.*?libyubikey-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
