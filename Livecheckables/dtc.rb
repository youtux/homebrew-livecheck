class Dtc
  livecheck do
    url "https://mirrors.edge.kernel.org/pub/software/utils/dtc/"
    regex(/href=.*?dtc-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
