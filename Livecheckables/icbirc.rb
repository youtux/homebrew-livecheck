class Icbirc
  livecheck do
    url :homepage
    regex(/href=.*?icbirc-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
