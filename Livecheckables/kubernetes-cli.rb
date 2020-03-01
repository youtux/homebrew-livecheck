class KubernetesCli
  livecheck :url   => "https://github.com/kubernetes/kubernetes.git",
            :regex => /^v([\d\.]+)$/
end
