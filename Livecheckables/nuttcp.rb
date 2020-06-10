class Nuttcp
  livecheck do
    url :homepage
    regex(/href=.+nuttcp-v?(\d+(?:\.\d+)+)\.t/)
  end
end
