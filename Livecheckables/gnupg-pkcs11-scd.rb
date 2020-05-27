class GnupgPkcs11Scd
  livecheck do
    url "https://github.com/alonbl/gnupg-pkcs11-scd/releases"
    regex(%r{href="/alonbl/gnupg-pkcs11-scd/releases/tag/gnupg-pkcs11-scd-([0-9,\.]+)"})
  end
end
