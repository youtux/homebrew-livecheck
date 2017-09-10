class Libflowmanager
  livecheck :url => "https://research.wand.net.nz/software/libflowmanager.php",
            :regex => %r{latest version is.*?href=".*?/libflowmanager-([0-9\.]+)\.t}m
end
