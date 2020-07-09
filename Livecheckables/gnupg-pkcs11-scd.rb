class GnupgPkcs11Scd
  livecheck do
    url "https://github.com/alonbl/gnupg-pkcs11-scd/releases/latest"
    regex(%r{href=.*?/tag/gnupg-pkcs11-scd[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
