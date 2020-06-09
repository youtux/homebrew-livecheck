class Icbirc
  livecheck do
    url :homepage
    regex(%r{href="/icbirc-([0-9.]+)\.t})
  end
end
