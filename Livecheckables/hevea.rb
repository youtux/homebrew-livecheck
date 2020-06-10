class Hevea
  livecheck do
    url :homepage
    regex(/Current version is ([0-9.]+)\./)
  end
end
