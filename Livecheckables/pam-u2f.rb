class PamU2f
  livecheck :url => "https://developers.yubico.com/pam-u2f/Releases/",
            :regex => /href="pam_u2f-([0-9\.]+)\.t/
end
