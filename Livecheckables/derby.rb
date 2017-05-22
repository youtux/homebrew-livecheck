class Derby
  livecheck :url => "http://db.apache.org/derby/derby_downloads.html",
            :regex => /href="releases\/release-([0-9,\.]+)\.cgi"/
end
