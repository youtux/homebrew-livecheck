class FreeradiusServer
  livecheck do
    regex(/^release_(\d+(?:[_.]\d+)+)$/)
  end
end
