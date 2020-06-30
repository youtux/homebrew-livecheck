class Kustomize
  livecheck do
    url :head
    regex(%r{kustomize/v?(\d+(?:\.\d+)+)$})
  end
end
