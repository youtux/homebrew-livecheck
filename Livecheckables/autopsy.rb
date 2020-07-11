class Autopsy
  livecheck do
    url "https://github.com/sleuthkit/autopsy/releases/latest"
    regex(%r{href=.*?/tag/autopsy[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
