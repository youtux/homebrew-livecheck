class Amap
  livecheck do
    url "https://github.com/vanhauser-thc/THC-Archive/tree/master/Tools/"
    strategy :page_match
    regex(%r{href=.*?/amap[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
