class Sleuthkit
  livecheck :url => "https://github.com/sleuthkit/sleuthkit/releases",
            :regex => %r{href="/sleuthkit/sleuthkit/tree/sleuthkit-?([0-9\.]+)}
end
