class Nuttcp
  livecheck do
    url "https://www.nuttcp.net/nuttcp/"
    regex(/href=.+nuttcp-v?(\d+(?:\.\d+)+)\.t/)
  end
end
