class Dynamips
  livecheck :url   => "https://github.com/GNS3/dynamips/releases",
            :regex => %r{href="/GNS3/dynamips/tree/v?([0-9\.]+)"}
end
