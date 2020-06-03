class LittleCms2
  livecheck do
    url "http://www.littlecms.com/download.html"
    regex(%r{<h1>Current version is ([0-9.]+)</h1>})
  end
end
