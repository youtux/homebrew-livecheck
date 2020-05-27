class SpiceProtocol
  livecheck do
    url "https://www.spice-space.org/download/releases/"
    regex(/href=.*?spice-protocol-v?(\d+(?:\.\d+)+)\.t/)
  end
end
