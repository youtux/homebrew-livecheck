class Links
  livecheck do
    url "http://links.twibright.com/download.php"
    regex(/Current version is ([0-9.]+)\. /i)
  end
end
