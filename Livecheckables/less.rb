class Less
  livecheck do
    url "http://www.greenwoodsoftware.com/less/download.html"
    regex(%r{<strong>RECOMMENDED</strong> version v?(\d+)}i)
  end
end
