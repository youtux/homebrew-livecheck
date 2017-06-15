class Libtiff
  livecheck :url => "http://libtiff.maptools.org/",
            :regex => %r{<th>Latest Stable Release</th>.*<td><a href="v([0-9,\.]+)\.html">}m
end
