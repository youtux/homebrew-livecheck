class Protobuf
  livecheck :url   => "https://github.com/protocolbuffers/protobuf/releases",
            :regex => %r{latest.*?href="/protocolbuffers/protobuf/tree/v?([0-9\.]+)}m
end
