class Nginx
  livecheck :url   => "https://nginx.org/",
            :regex => %r{nginx-([0-9\.]+)</a>\nmainline version has been released}
end
