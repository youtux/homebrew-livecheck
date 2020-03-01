class Jsonnet
  livecheck :url   => "https://github.com/google/jsonnet/releases",
            :regex => %r{href="/.*/jsonnet/releases/tag/v?([0-9\.]+)"}
end
