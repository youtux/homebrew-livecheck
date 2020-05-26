class Libnatpmp
  livecheck do
    url "http://miniupnp.free.fr/files/"
    regex(/href='download.php\?file=libnatpmp-([0-9]+)\.t/)
  end
end
