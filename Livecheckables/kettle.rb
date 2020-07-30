class Kettle
  livecheck do
    url :stable
    regex(%r{url=.*?/pdi-ce[._-]v?(\d+(?:\.\d+)+(?:-\d+)?)\.(?:z|t)}i)
  end
end
