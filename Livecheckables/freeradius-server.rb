class FreeradiusServer
  livecheck do
    url :head
    regex(/^release_(\d+(?:[_.]\d+)+)$/)
  end
end
