class LibatomicOps
  livecheck do
    url "https://github.com/ivmai/libatomic_ops/releases"
    regex(%r{latest.*?href="/ivmai/libatomic_ops/tree/v?([0-9.]+)}m)
  end
end
