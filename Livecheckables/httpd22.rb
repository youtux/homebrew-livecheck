class Httpd22
  livecheck :url => "http://httpd.apache.org/download.cgi",
            :regex => /httpd-(2\.2\.[0-9\.]+)\.t/
end
