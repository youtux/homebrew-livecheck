class Hevea
  livecheck do
    url "http://hevea.inria.fr"
    regex(/Current version is ([0-9\.]+)\./)
  end
end
