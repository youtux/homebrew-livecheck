class Sleuthkit
  livecheck do
    url "https://github.com/sleuthkit/sleuthkit/releases"
    regex(%r{Latest.*?href="/sleuthkit/sleuthkit/tree/sleuthkit-?([0-9.]+)}m)
  end
end
