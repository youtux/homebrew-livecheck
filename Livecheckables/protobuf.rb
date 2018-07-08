class Protobuf
  livecheck :url => "https://github.com/google/protobuf/releases",
            :regex => %r{latest.*?href="/google/protobuf/tree/v?([0-9\.]+)}m
end
