class Ykpers
  livecheck :url   => "https://developers.yubico.com/yubikey-personalization/Releases/",
            :regex => /href="ykpers\-([0-9\.]+)\.t/
end
