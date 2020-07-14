class Upscaledb
  livecheck do
    url "http://files.upscaledb.com/dl/"
    regex(/href=.*?upscaledb-(\d+(?:\.\d+)+)\.t/)
  end
end
