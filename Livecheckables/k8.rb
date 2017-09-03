class K8
  livecheck :url => "https://github.com/attractivechaos/k8/releases",
            :regex => %r{href="/attractivechaos/k8/tree/v([0-9\.]+)"}
end
