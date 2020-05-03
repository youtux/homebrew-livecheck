class Pass
  livecheck :url   => "https://git.zx2c4.com/password-store/refs/",
            :regex => /href=.+password-store-v?(\d+(?:\.\d+)+)\.t/
end