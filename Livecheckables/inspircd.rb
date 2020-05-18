class Inspircd
  livecheck :url   => "https://github.com/inspircd/inspircd.git",
            :regex => /^v?(\d+(?:\.\d+)+)$/
end
