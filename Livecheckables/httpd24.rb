class Httpd24
  livecheck :url => "http://httpd.apache.org/download.cgi",
            :regex => /httpd-([0-9\.]+)\.t/
end
