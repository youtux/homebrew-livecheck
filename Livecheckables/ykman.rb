class Ykman
  livecheck :url   => "https://developers.yubico.com/yubikey-manager/Releases/",
            :regex => /href="yubikey-manager-([0-9\.]+)\.t/
end
