class ZeroInstall
  livecheck :url   => "https://github.com/0install/0install.git",
            :regex => /^v?(\d+(?:\.\d+)+)$/
end
