class KubernetesCli
  livecheck :url => "https://github.com/kubernetes/kubernetes/releases",
            :regex => %r{Latest.*?href="/kubernetes/kubernetes/tree/v?([0-9\.]+)}m
end
