class Icbirc
  livecheck do
    url :homepage
    regex(/href=.*?icbirc[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
