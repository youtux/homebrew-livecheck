class Kettle
  livecheck :regex => %r{url=.+?/pdi-ce-v?(\d+(?:\.\d+)+(?:-\d+)?)\.(?:z|t)}
end
