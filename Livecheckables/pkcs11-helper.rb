class Pkcs11Helper
  livecheck do
    url "https://github.com/OpenSC/pkcs11-helper/releases/latest"
    regex(%r{href=.*?/tag/pkcs11-helper[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
