class OpenshiftCli
  livecheck :url => "https://github.com/openshift/origin/releases",
            :regex => %r{Latest release.*?href="/openshift/origin/tree/v?([0-9\.]+)"}m
end
