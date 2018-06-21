class Nginx
  livecheck :url => "http://nginx.org/",
            :regex => %r{nginx-([0-9\.]+)</a>\nmainline version has been released}
end
