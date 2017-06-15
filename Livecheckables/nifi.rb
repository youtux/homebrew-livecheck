class Nifi
  livecheck :url => "https://nifi.apache.org/download.html",
            :regex => %r{href=.*nifi-([0-9,\.]+)-bin\.tar}
end
