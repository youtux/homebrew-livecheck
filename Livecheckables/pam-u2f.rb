class PamU2f
  livecheck do
    url "https://developers.yubico.com/pam-u2f/Releases/"
    regex(/href=.*?pam_u2f-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
