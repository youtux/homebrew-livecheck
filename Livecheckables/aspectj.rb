class Aspectj
  livecheck :url   => "https://eclipse.org/aspectj/downloads.php",
            :regex => %r{Latest Stable Release.*?/aspectj-([0-9,\.]+)\.j}m
end
