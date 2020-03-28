class Curaengine
  livecheck :url   => "https://github.com/Ultimaker/CuraEngine.git",
            # 4.5.0 is newer than 15.04.6
            :regex => /^v?(\d(?:\.\d+)+)$/
end
