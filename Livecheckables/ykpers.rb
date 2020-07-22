class Ykpers
  livecheck do
    url "https://developers.yubico.com/yubikey-personalization/Releases/"
    regex(/href=.*?ykpers-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
