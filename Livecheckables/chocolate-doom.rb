class ChocolateDoom
  livecheck do
    url :head
    regex(/^chocolate-doom-(\d+(?:\.\d+)+)$/i)
  end
end
