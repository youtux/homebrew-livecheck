class PkgConfig
  livecheck do
    url "https://pkg-config.freedesktop.org/releases/"
    regex(/pkg-config-([0-9,.]+)\./i)
  end
end
