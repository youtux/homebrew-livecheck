class PkgConfig
  livecheck do
    url "https://pkg-config.freedesktop.org/releases/"
    regex(/pkg-config[._-]v?(\d+(?:\.\d+)+)\./i)
  end
end
