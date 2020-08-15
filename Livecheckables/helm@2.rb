class HelmAT2
  livecheck do
    url "https://github.com/helm/helm.git"
    regex(/^v?(2(?:\.\d+)+)$/i)
  end
end
