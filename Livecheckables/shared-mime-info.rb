class SharedMimeInfo
  livecheck do
    url "https://gitlab.freedesktop.org/api/v4/projects/1205/releases"
    regex(/shared-mime-info ([0-9.]+)/)
  end
end
