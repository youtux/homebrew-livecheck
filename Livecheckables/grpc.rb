class Grpc
  livecheck do
    url "https://github.com/grpc/grpc/releases"
    regex(%r{latest.*?href="/grpc/grpc/tree/v?([0-9.]+)}m)
  end
end
