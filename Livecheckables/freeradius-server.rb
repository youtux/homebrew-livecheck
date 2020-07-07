class FreeradiusServer
  livecheck do
    url :head
    regex(/^release[._-](\d+(?:[._]\d+)+)$/)
  end
end
