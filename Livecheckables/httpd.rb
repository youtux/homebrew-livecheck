class Httpd
  livecheck :url => "https://www.apache.org/dist/httpd/Announcement2.4.html",
            :regex => /Apache HTTP Server ([0-9\.]+) Released/
end
