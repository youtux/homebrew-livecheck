class Derby
  livecheck :url => "http://db.apache.org/derby/derby_downloads.html",
            :regex => %r{href="releases/release-([0-9,\.]+)\.cgi"}
end
