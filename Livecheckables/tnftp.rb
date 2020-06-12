class Tnftp
  # Apple removed `tnftp` from macOS, after High Sierra (10.13).
  # The `tnftp` Formula is built using Apple's official tarball
  # for macOS 10.13. It's safe to assume there won't be any further
  # updates and so we skip livecheck for this Formula.
  livecheck do
    skip "No longer included with macOS (since 10.13)"
  end
end
