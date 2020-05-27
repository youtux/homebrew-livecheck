class Pkcs11Helper
  livecheck do
    url "https://github.com/OpenSC/pkcs11-helper/releases"
    regex(%r{Latest.*?href="/OpenSC/pkcs11-helper/tree/pkcs11-helper-([0-9\.]+)}m)
  end
end
