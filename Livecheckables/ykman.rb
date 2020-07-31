class Ykman
  livecheck do
    url "https://developers.yubico.com/yubikey-manager/Releases/"
    regex(/href=.*?yubikey-manager[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
