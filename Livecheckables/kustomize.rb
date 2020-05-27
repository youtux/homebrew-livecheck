class Kustomize
  livecheck do
    regex(%r{kustomize/v?(\d+(?:\.\d+)+)$})
  end
end
