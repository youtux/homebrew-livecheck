class Kettle
  livecheck do
    url :stable
    regex(%r{url=.*?/pdi-ce-v?(\d+(?:\.\d+)+(?:-\d+)?)\.(?:z|t)}i)
  end
end
