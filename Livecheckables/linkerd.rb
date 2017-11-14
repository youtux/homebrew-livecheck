class Linkerd
  livecheck :url => "https://github.com/linkerd/linkerd/releases",
            :regex => %r{href="/linkerd/linkerd/tree/v?([0-9\.]+)"}
end
