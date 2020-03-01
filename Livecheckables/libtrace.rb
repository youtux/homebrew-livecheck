class Libtrace
  livecheck :url   => "https://research.wand.net.nz/software/libtrace.php",
            :regex => %r{stable version is.*?href=".*?/libtrace-([0-9\.]+)\.t}
end
