class PamYubico
  livecheck :url => "https://developers.yubico.com/yubico-pam/Releases/",
            :regex => /href="pam_yubico-([0-9\.]+)\.t/
end
