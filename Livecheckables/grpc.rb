class Grpc
  livecheck do
    url "https://github.com/grpc/grpc/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
