class SharedMimeInfo
  livecheck do
    url "https://gitlab.freedesktop.org/api/v4/projects/1205/releases"
    regex(/shared-mime-info v?(\d+(?:\.\d+)+)/i)
  end
end
