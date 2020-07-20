class Libsodium
  livecheck do
    url "https://download.libsodium.org/libsodium/releases/"
    regex(/href=.*?libsodium-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
