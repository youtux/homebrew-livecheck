class HelmAT2
  livecheck do
    url :stable
    regex(/^v?(2(?:\.\d+)+)$/i)
  end
end
