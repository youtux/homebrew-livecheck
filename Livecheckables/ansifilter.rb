class Ansifilter
  livecheck do
    url "http://www.andre-simon.de/zip/download.php"
    regex(/href="ansifilter-([0-9,.]+)\.t/)
  end
end
