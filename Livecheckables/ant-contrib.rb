class AntContrib
  livecheck do
    url :stable
    regex(%r{url=.+?/ant-contrib-v?(\d+(?:\.\d+)+(?:[a-z]\d+)?)-bin\.t}i)
  end
end
