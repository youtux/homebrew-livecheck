class Icbirc
  livecheck do
    url :homepage
    regex(/href=.*?icbirc-([0-9.]+)\.t/i)
  end
end
