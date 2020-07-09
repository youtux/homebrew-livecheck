class Sleuthkit
  livecheck do
    url "https://github.com/sleuthkit/sleuthkit/releases/latest"
    regex(%r{href=.*?/tag/sleuthkit[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
