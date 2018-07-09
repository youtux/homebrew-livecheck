class KubernetesCli
  livecheck :url => "https://github.com/kubernetes/kubernetes/releases",
            :regex => %r{href="/kubernetes/kubernetes/tree/v?(1\.11\.[0-9\.]+)}m
end
