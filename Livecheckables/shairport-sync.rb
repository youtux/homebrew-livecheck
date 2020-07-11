class ShairportSync
  livecheck do
    url "https://github.com/mikebrady/shairport-sync/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
