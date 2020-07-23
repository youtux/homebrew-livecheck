class PamYubico
  livecheck do
    url "https://developers.yubico.com/yubico-pam/Releases/"
    regex(/href=.*?pam_yubico-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
