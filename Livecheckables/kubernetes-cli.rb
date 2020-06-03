class KubernetesCli
  livecheck do
    url "https://github.com/kubernetes/kubernetes.git"
    regex(/^v([\d.]+)$/)
  end
end
