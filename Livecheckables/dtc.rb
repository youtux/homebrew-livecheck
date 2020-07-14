class Dtc
  livecheck do
    url "https://mirrors.edge.kernel.org/pub/software/utils/dtc/"
    regex(/href=.*?dtc-([0-9.]+)\.t/)
  end
end
