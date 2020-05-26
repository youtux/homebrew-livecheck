class Kettle
  livecheck do
    regex(%r{url=.+?/pdi-ce-v?(\d+(?:\.\d+)+(?:-\d+)?)\.(?:z|t)})
  end
end
