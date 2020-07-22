class LittleCms2
  livecheck do
    url "http://www.littlecms.com/download.html"
    regex(%r{<h1>Current version is v?(\d+(?:\.\d+)+)</h1>}i)
  end
end
