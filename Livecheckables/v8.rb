class V8
  livecheck :url   => "https://omahaproxy.appspot.com/all.json?os=mac&channel=stable",
            :regex => /"v8_version": "(([0-9]+\.){3}[0-9]+)"/
end
