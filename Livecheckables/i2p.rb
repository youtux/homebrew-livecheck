class I2p
  livecheck do
    url "https://geti2p.net/en/download"
    regex(/i2pinstall_([0-9.]+)\.jar/)
  end
end
