class V8
  livecheck do
    url "https://omahaproxy.appspot.com/all.json?os=mac&channel=stable"
    regex(/"v8_version": "(([0-9]+\.){3}[0-9]+)"/i)
  end
end
