class Libsodium
  livecheck :url   => "https://download.libsodium.org/libsodium/releases/",
            :regex => /href=.*?libsodium-v?(\d+(?:\.\d+)+)\.t/
end
