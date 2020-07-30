class I2p
  livecheck do
    url "https://geti2p.net/en/download"
    regex(/i2pinstall[._-]v?(\d+(?:\.\d+)+)\.jar/i)
  end
end
