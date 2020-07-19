class PamYubico
  livecheck do
    url "https://developers.yubico.com/yubico-pam/Releases/"
    regex(/href=.*?pam_yubico-([0-9.]+)\.t/i)
  end
end
