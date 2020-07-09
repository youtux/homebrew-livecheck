class Protobuf
  livecheck do
    url "https://github.com/protocolbuffers/protobuf/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
