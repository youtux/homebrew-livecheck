class Autopsy
  livecheck do
    url "https://github.com/sleuthkit/autopsy/releases/latest"
    regex(%r{href=.+?/tag/autopsy-v?(\d+(?:\.\d+)+)})
  end
end
